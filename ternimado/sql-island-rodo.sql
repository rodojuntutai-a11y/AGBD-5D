1.SELECT * FROM INHABITANT

2.SELECT * FROM INHABITANT where state = "friendly"

3.SELECT * FROM INHABITANT where state = "friendly" and job = "weaponsmith"

4.SELECT * FROM INHABITANT where state like "friendly" and job like "%smith"

5.SELECT personid FROM INHABITANT WHERE name LIKE "Stranger"

6.SELECT gold FROM INHABITANT WHERE name like "Stranger"

7.SELECT * FROM ITEM WHERE OWNER IS NULL

8.UPDATE item SET owner = 20 WHERE owner is NULL

9.SELECT * FROM item WHERE owner = 20

10.SELECT * FROM INHABITANT WHERE STATE = "friendly" and job = "dealer" or job = "merchant"

11.UPDATE item SET OWNER = 15 WHERE ITEM = "ring" OR ITEM = "teapot";

12.UPDATE INHABITANT SET name = "Axel" WHERE name like "stranger"

13.SELECT * FROM inhabitant WHERE JOB = "baker" ORDER BY gold DESC;

14.SELECT * FROM inhabitant WHERE JOB = "pilot";

15.SELECT inhabitant.name FROM village, inhabitant WHERE village.chief = inhabitant.personid AND village.name = "Onionville"

16.SELECT COUNT(*) FROM inhabitant JOIN village ON village.villageid = inhabitant.villageid WHERE village.name = "Onionville" AND inhabitant.gender = "f";

17.SELECT inhabitant.name FROM inhabitant JOIN village ON village.villageid = inhabitant.villageid WHERE village.name = "Onionville" AND inhabitant.gender = "f";

18.SELECT SUM(inhabitant.gold) FROM inhabitant WHERE inhabitant.job IN ('baker','dealer','merchant');

19.SELECT job, SUM(inhabitant.gold), AVG(inhabitant.gold) FROM inhabitant GROUP BY job ORDER BY
AVG(inhabitant.gold)

20.SELECT state, AVG(inhabitant.gold) FROM inhabitant GROUP BY state ORDER BY AVG(inhabitant.gold)

21.DELETE FROM inhabitant WHERE name = 'Dirty Diane';

22.UPDATE inhabitant SET state = 'friendly' WHERE state = 'kidnapped';





