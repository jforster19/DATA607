
DROP TABLE IF EXISTS `movie_ratings`.`movies`;

CREATE TABLE `movie_ratings`.`movies` 

(
`Movie_ID` int NOT NULL,
`Movie_Name` text,
 `Movie_Description` text,
 `Genre` text, 
 `Release_Date` date, 
 `Origin` text, 
 `Source` text,
 PRIMARY KEY (`Movie_ID`)
 );

INSERT INTO `movie_ratings`.`movies` 
(`Movie_ID`,`Movie_Name`,`Movie_Description`,`Genre`,`Release_Date`,`Origin`,`Source`) 
VALUES (1,'Me Time', 'Comedy about friendship', 'Comedy','2022-08-26',NULL,'Netflix'),
(2,'Thor', 'Superhero adventure', 'Action','2022-07-08','Comics','Theaters'),
(3,'Doctor Strange', 'Superhero travels through time', 'Action','2022-05-06','Comics','Theaters'),
(4,'Spider-Man', 'Superhero saves the day', 'Action','2021-12-17','Comics','Theaters'),
(5,'Turning Red', 'Animated coming of age story', 'Animated','2022-03-01',NULL,'Disney Plus'),
(6,'Uncharted', 'Adventurous treasure hunting', 'Thriller','2022-02-18','Video Game','Netflix');



DROP TABLE IF EXISTS `movie_ratings`.`movie_ratings`;

CREATE TABLE `movie_ratings`.`movie_ratings` 
(
`Reviewer` text(250),
`Movie_ID` int ,
 `Rating` double,
 Foreign Key(`Movie_ID`) REFERENCES MOVIES(Movie_ID)
 );
 
 INSERT INTO `movie_ratings`.`movie_ratings` 
(`Reviewer`,`Movie_ID`,`Rating`) 
VALUES
 ('Sammie',1,3),('Sammie',2,NULL),('Sammie',3,NULL),('Sammie',4,NULL),('Sammie',5,5),('Sammie',6,4),
 ('Jordan',2,2),('Jordan',3,3),('Jordan',1,NULL),('Jordan',4,3),('Jordan',5,NULL),('Jordan',6,NULL),
 ('Keith',2,NULL),('Keith',3,2),('Keith',1,NULL),('Keith',4,4),('Keith',5,NULL),('Keith',6,NULL),
 ('Seth',2,NULL),('Seth',3,2.5),('Seth',4,5),('Seth',1,NULL),('Seth',5,NULL),('Seth',6,3),
 ('Eric',2,2),('Eric',3,2.5),('Eric',4,4),('Eric',1,NULL),('Eric',5,NULL),('Eric',6,NULL),
 ('Mike',2,4),('Mike',3,3),('Mike',4,3),('Mike',1,NULL),('Mike',5,3),('Mike',6,5),
 ('Wally',2,1),('Wally',3,4),('Wally',4,2),('Wally',1,3),('Wally',5,NULL),('Wally',6,4);
 
 
 