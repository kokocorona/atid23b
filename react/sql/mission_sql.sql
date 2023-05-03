-- תציגו טבלה שמציגה את כל הרשומות ורק את העמודות: name,ram,pref_score 
SELECT name, ram, pref_score FROM devices

-- תציגו טבלה שמציגה מכשירים שה COMPANY_ID שלהם שווה ל 1 ותמיין את הציון שלהם מהגבוה לנמוך לפי PREF_SCORE 
SELECT * FROM devices WHERE company_id = 1 ORDER BY pref_score DESC

-- תציגו טבלה שמציגה את 5 המכשירים עם ציון המצלמה הטובה ביותר
SELECT * FROM devices ORDER BY camera_score DESC LIMIT 0,5;

-- תציגו טבלה שמציגה מכשירים של COMPANY_ID 2 לפי המחיר שלהם (מהזול ליקר) (רק את ה5 הראשונים)
-- הטבלה תציג את העמודות : שם המכשיר , ID , price, battery_score
SELECT id,name,price,battery_score FROM devices WHERE company_id = 2 ORDER BY price DESC LIMIT 0,5