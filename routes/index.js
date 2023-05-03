const express= require("express");
const router = express.Router();

router.get("/", async(req,res) => {
  res.json({msg:"Final lesson , good luck in high tech"});
})


module.exports = router;