const express= require("express");
const {auth} = require("../middlewares/auth");
const {SectionModel,validateSection} = require("../models/sectionModel")
const router = express.Router();

router.get("/", async(req,res) => {
  const perPage = Math.min(req.query.perPage, 20) || 5;
  const page = req.query.page - 1 || 0;
  const sort = req.query.sort || "_id"
  // אם שווה יס יציג מהקטן לגדול ובברירת מחדל מהגדול לקטן
  const reverse = req.query.reverse == "yes" ? 1 : -1
  //?user_id= יכולת לשלוף מידע על יוזר מסויים
  const user_id = req.query.user_id
  // ?category= יכולת לשלוף לפי קטגוריה
  const category = req.query.category;
  // ?s=
  const search = req.query.s;
  
  try {
    let findDb = {};
    if(user_id){findDb = {user_id}}
    else if(category){findDb = {cat_url:category}}
    else if(search){
      const searchExp = new RegExp(search,"i")
      findDb = {$or:[{title:searchExp},{info:searchExp}]}
    }
    
    let data = await SectionModel
      .find(findDb)
      // מגביל את כמות הרשומות המצוגות בשאילתא
      .limit(perPage)
      // skip -> כמה רשומות לדלג
      .skip(page * perPage)
      // sort:{prop} 1 -> מהקטן לגדול , and -1 מהגדול לקטן
      // [] -> אומר לו לאסוף את המשתנה בסורט ולא לקחת אותו כמאפיין
      // reverse -> אחד או מינוס אחד
      .sort({ [sort]: reverse })
    res.json(data);
  }
  catch (err) {
    console.log(err);
    res.status(502).json({ err })
  }
})

router.get("/single/:id", async(req,res) => {
  try{
    let data = await SectionModel.findOne({_id:req.params.id});
    res.json(data);
  }
  catch(err){
    console.log(err);
    res.status(502).json({err})
  }
})

router.get("/count", async(req,res) => {
  let perPage = Math.min(req.query.perPage, 20) || 5;
  try{
    let data = await SectionModel.countDocuments(perPage);
    // מחזיר בחזרה את מספר הרשומות בקאונט, ומספר העמודים לפי כמות
    // הרשומות שאנחנו שולפים פר עמוד
    res.json({count:data,pages:Math.ceil(data/perPage)})
  }
  catch(err){
    console.log(err);
    res.status(502).json({err})
  }
})

// auth -> פונקציית אמצע שבודקת את הטוקן ומפענחת אותו
// במיוחד את האיי די שבתוכו
router.post("/", auth,async(req,res) => {
  let validBody = validateSection(req.body);
  if(validBody.error){
    return res.status(400).json(validBody.error.details);
  }
  try{
    let section = new SectionModel(req.body);
    // הוספת איי די לרשומה של המשתמש שיצר אותו מהטוקן
    section.user_id = req.tokenData._id;
    await section.save();
    res.status(201).json(section);
  }
  catch(err){
    console.log(err);
    res.status(502).json({err})
  }
})


router.put("/:id", auth ,async(req,res) => {
  let validBody = validateSection(req.body);
  if(validBody.error){
    return res.status(400).json(validBody.error.details);
  }
  try{
    let id = req.params.id;
 
    let data;
    if(req.tokenData.role == "admin"){
      data =  await SectionModel.updateOne({_id:id},req.body);
    }
       // הוספנו גם בשאילתא שיוזר איי די צריך להיות שווה לאיי די 
    // בטוקן ככה שמשתמש א' לא יוכל בטעות לערוך למשתמש ב' את הרשומה
    else{
      data =  await SectionModel.updateOne({_id:id,user_id:req.tokenData._id},req.body);
    }
    res.json(data);
  }
  catch(err){
    console.log(err);
    res.status(502).json({err})
  }
})

router.delete("/:id", auth ,async(req,res) => {
  try{
    let id = req.params.id;
    // הוספנו גם בשאילתא שיוזר איי די צריך להיות שווה לאיי די 
    // בטוקן ככה שמשתמש א' לא יוכל בטעות למחוק למשתמש ב' את הרשומה
    let data;
    // מאשפר לאדמין למחוק גם רשומה של אחרים
    if(req.tokenData.role == "admin"){
      data =  await SectionModel.deleteOne({_id:id});
    }
    else{
      data =  await SectionModel.deleteOne({_id:id,user_id:req.tokenData._id});
    }
    res.json(data);
  }
  catch(err){
    console.log(err);
    res.status(502).json({err})
  }
})


module.exports = router;