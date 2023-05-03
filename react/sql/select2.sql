
-- טבלה של מכשירים DEVICES

--  להציג את המכשירים ממויינים לפי המחיר שלהם מהקטן לגדול - ברירת מחדל
-- deviceModel.find({}).sort({price:1})
SELECT * FROM devices ORDER BY price

-- נמיין את המכשירים לפי הציון של הסוללה מהגדול לקטן
-- DESC -> מהגדול לקטן
-- ASC -> מהקטן לגדול
-- deviceModel.find({}).sort({price:-1})
SELECT * FROM devices ORDER BY battery_score DESC

-- נציג מכשירים שהאיי די של החברה שלהם הוא 2 ונמיין אותם לפי ניקוד סוללה
-- deviceModel.find({company_id:'2'}).sort({price:-1})
SELECT * FROM devices WHERE company_id = '2' ORDER BY battery_score DESC

-- להציג את כל העמודות ורק את ה 5 המכשירים הראשונים
-- deviceModel.find({}).limit(5).skip(0)
SELECT * FROM devices LIMIT 0,5;

-- להציג את כל העמודות להגביל ל 5 ולדלג על 5
-- deviceModel.find({}).limit(5).skip(5)
SELECT * FROM devices LIMIT 5,5;

-- להחזיר לי מהטבלה את מי שהציון של הסוללה שלו גבוה מ75 , יסדר שהם יוצגו לפי ציון
-- הסוללה מהגדול לקטן ויציג רק את ה 3 עם הציון הכי טוב
-- deviceModel.find({battery_score:{$gt:75}}).limit(3).skip(0).sort({batter_score:-1})
SELECT * FROM devices WHERE battery_score > 75 ORDER BY battery_score DESC LIMIT 0,3;
-- SELECT, FROM, WHERE, ORDER BY , LIMIT 

