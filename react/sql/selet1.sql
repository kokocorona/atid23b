-- לקבל מהטבלה את כל העמודות וכל הרשומות
SELECT * FROM games;

-- לקבל מהטבל את הרשומות שהקטגוריה שלהם היא פוטבול
-- gameModel.find({category:"football"})
SELECT * FROM games WHERE category = "football";

-- לשלוף רשומות שקבוצה א' שווה לברזיל או הולנד
-- gameModel.find({$or:[teamA:"brazil",teamA:"holland"]})
SELECT * FROM games WHERE teamA = "brazil" OR teamA = "holland"

-- יחזיר משחקים שהתוצאה של קבוצה ב' היא בין 85 ל 100
-- gameModel.find({$and:[{scoreA:{$gt:85}},{scoreA:{$lt:100}}})
SELECT * FROM games WHERE scoreB > 85 AND scoreB < 100
