/*
1) Select the family members that are older than 25 and have an even id and show their Last Name and First Names in this exact order
*/
SELECT LastName, FirstName FROM `hw3`.`family` WHERE Age>25 AND id%2=0;

/*
2) Select all the games in the database and shows them in descrescent order by their price
*/
SELECT * FROM `hw3`.`games` WHERE 1 ORDER BY price DESC;

/*
3) Select the mangas that have at least 100 chapters and shows them ordering by the oldest release of the first chapter
*/
SELECT * FROM `hw3`.`manga` WHERE lastChapter >= 100 ORDER BY firstChapterYear ASC;
