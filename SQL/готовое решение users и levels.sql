Создание таблицы users
CREATE TABLE users (
   id serial PRIMARY KEY,
   user_name varchar(50) not null,
   level_id INTEGER 
   skill INTEGER
   );
insert into users (user_name, level_id, skill)
 VALUES 
 ('Anton', 1, 900000),
 ('Denis', 3, 4000),
 ('Petr', 2, 50000),
 ('Andrey', 4, 20),
 ('Olga', 1, 600000),
 ('Anna', 1, 1600000);



Создание таблицы levels
CREATE TABLE levels
(
    Id SERIAL PRIMARY KEY,
    level_name VARCHAR(50) not NULL
   );
    SELECT * from levels
    INSERT INTO levels (level_name)
   VALUES ('admin'),
   ('power_user'),
   ('user'),
   ('guest')

 
1. Отобрать из таблицы users всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а
Имя с прописной буквы логически не может начинаться. Но запрос составила т.к. имя собственное и может писаться как угодно. 

SELECT user_name from users WHERE level_id=1 AND skill > 799000 AND user_name LIKE '%a%';
   SELECT user_name from users WHERE level_id=1 AND skill > 799000 AND user_name LIKE 'a%';
   SELECT user_name from users WHERE level_id=1 AND skill > 799000 AND user_name LIKE '%a';




2. Удалить всех пользователей, у которых skill меньше 100000

DELETE from users
  WHERE skill<100000;



3. Вывести все данные из таблицы user в порядке убывания по полю skill 
SELECT * from users ORDER BY skill DESC;


4. Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10
insert into users (user_name, level_id, skill)
 VALUES ('Oleg', 4, 10);


5. Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000
UPDATE users set skill='2000000' WHERE level_id<2;

6. Выбрать user_name всех пользователей уровня admin используя подзапрос

SELECT user_name from users where level_id in (SELECT id from levels where level_name='admin');

7. Выбрать user_name всех пользователей уровня admin используя join

SELECT u.user_name, l.level_name from users u JOIN levels l On u.level_id=l.id where level_name='admin';

