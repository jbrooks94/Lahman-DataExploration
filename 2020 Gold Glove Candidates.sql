---- Defensive totals with positional requirements

-- PITCHER
SELECT nameFirst, nameLast, teamID, PO, A, DP, E, InnOuts
FROM LahmanTest..Fielding
INNER JOIN LahmanTest..People ON Fielding.playerID = People.playerID
WHERE yearID = 2020 AND lgID = 'AL' AND POS = 'P' AND InnOuts >= 150

-- CATCHER
SELECT nameFirst, nameLast, teamID, PO, A, DP, E, InnOuts
FROM LahmanTest..Fielding
INNER JOIN LahmanTest..People ON Fielding.playerID = People.playerID
WHERE yearID = 2020 AND lgID = 'AL' AND POS = 'C' AND G >= 29

---- FIELDER
SELECT nameFirst, nameLast, teamID, PO, A, DP, E, InnOuts
FROM LahmanTest..Fielding
INNER JOIN LahmanTest..People ON Fielding.playerID = People.playerID
WHERE yearID = 2020 AND lgID = 'AL' AND POS = 'OF' AND InnOuts >= 795


---- Defensive Rates, shown as percentage of 100

-- PITCHER
SELECT nameFirst, nameLast, teamID, ROUND(PO/InnOuts, 3)*100 AS PO_pct, ROUND(A/InnOuts, 3)*100 AS A_pct, ROUND(DP/InnOuts,3)*100 AS DP_pct, E, InnOuts
FROM LahmanTest..Fielding
INNER JOIN LahmanTest..People ON Fielding.playerID = People.playerID
WHERE yearID = 2020 AND lgID = 'AL' AND POS = 'P' AND InnOuts >= 150

-- CATCHER
SELECT nameFirst, nameLast, teamID, ROUND(PO/InnOuts, 3)*100 AS PO_pct, ROUND(A/InnOuts, 3)*100 AS A_pct, ROUND(DP/InnOuts,3)*100 AS DP_pct, E, InnOuts
FROM LahmanTest..Fielding
INNER JOIN LahmanTest..People ON Fielding.playerID = People.playerID
WHERE yearID = 2020 AND lgID = 'AL' AND POS = 'C' AND G >= 29

-- FIELDER
SELECT nameFirst, nameLast, teamID, ROUND(PO/InnOuts, 3)*100 AS PO_pct, ROUND(A/InnOuts, 3)*100 AS A_pct, ROUND(DP/InnOuts,3)*100 AS DP_pct, E, InnOuts
FROM LahmanTest..Fielding
INNER JOIN LahmanTest..People ON Fielding.playerID = People.playerID
WHERE yearID = 2020 AND lgID = 'AL' AND POS = 'OF' AND InnOuts >= 795