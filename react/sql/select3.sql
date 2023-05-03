-- לשלוף את הסמרטפונים שהאיי די שלהם שווה 1 ,3,7
-- SELECT * FROM devices WHERE id = 1 or id = 3 or id = 7
-- devieModel.find({id:{$in:[1,3,7]}})
SELECT * FROM devices WHERE id IN (1,3,7)

-- להציג מכשירים שהמחיר שלהם הוא בין 1000 ל 1300
-- SELECT * FROM devices WHERE price >= 1000 OR price <= 1300
SELECT * FORM devices WHERE price BETWEEN 1000 AND 1300

--  נחפש רשומות לפי עמודת ניים שיש להם את המילה גלקסי
-- let searchExp = new RegExp('galaxy','i)
-- deviceModel.find({name:searchExp})
-- % -> האחוז בהתחלה מייצג שיכול להיות משהו מתחילת הביטוי
-- % -> האחוז בסוף מייצג שיכול להיות משהו מסוף לביטוי ואחוז
-- בהתחלה ובסוף מייצג שיש לחפש את הביטוי גלקסי
SELECT * FROM devices WHERE name LIKE '%galaxy%' 

-- ישלוף לי את כל הקומפני איי די שקיימים בטבלה
SELECT DISTINCT(company_id) FROM devices

-- לשלוף את המחיר הגבוה ביותר שקיים בטבלה
SELECT MAX(price) FROM devices

-- לשלוף את המחיר הכי זול וישנה את השם מאפיין ל
-- min_price ככינוי
-- SELECT MIN(price) AS min_price FROM devices
SELECT MIN(price) min_price FROM devices

-- יחזיר את כמות הרשומות בטבלה
SELECT COUNT(*) count FROM devices

-- סכום כל המחירים בטבלה
SELECT SUM(price) sum FROM devices 

-- מחזיר את ממוצע המחירים של כל המכשירים
SELECT AVG(price) avg FROM devices

-- מחזיר ממוצע המחירים של מכשירים שקומפני איי די שלהם שווה 1  ומעגל את המספר
-- ROUND() -> פרמטר ראשון המאפיין , פרמטר שני כמה ספרות אחרי הנקודה העשרונית
-- ויחזיר בנוסף מאפיין של סכום המספרים
SELECT ROUND(AVG(price),0) avg , SUM(price) sum  FROM devices WHERE company_id = 1

