-- טבלת GAMES
-- C.R.U.D -> פעולות
-- הוספת רשומה חדשה לטבלה
INSERT INTO games (teamA,teamB,scoreA,scoreB,time,category) VALUES("orlando","utah",105,97,"2023-04-09","NBA")

-- מוחק את רשומה שהאיי די שלה הוא 8
DELETE FROM games WHERE id = 8

-- מעדכן את קבוצה ב' ברשומה שהאיי די שלה הוא7 
UPDATE games set teamB = "boston" WHERE id = 7

-- הוספת מספר רשומות בשאילתא אחת
INSERT INTO games (teamA,teamB,scoreA,scoreB,time,category) VALUES
("utah","chicago",90,80,"2023-04-15","NBA"),
("detroit","san fransisco",90,105,"2023-04-09","NBA")