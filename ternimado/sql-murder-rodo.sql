SELECT * FROM crime_scene_report 
WHERE date = 20180115 and type = 'murder' and city like 'SQL city'


/*20180115	murder	
Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "Northwestern Dr". 
The second witness, named Annabel, lives somewhere on "Franklin Ave".	SQL City*/


SELECT * FROM person      
WHERE name like 'Annabel%' and address_street_name = 'Franklin Ave'

/*16371	Annabel Miller	490173	103	Franklin Ave	318771143*/


SELECT * FROM person      
WHERE address_street_name = 'Northwestern Dr' order by address_number desc LIMIT 1

/*14887	Morty Schapiro	118009	4919	Northwestern Dr	111564949*/


SELECT * FROM get_fit_now_member gm JOIN person p ON gm.person_id = p.id
WHERE name = 'Annabel Miller'

/*0081	16371	Annabel Miller	20160208	gold*/


SELECT * FROM interview i JOIN person p ON i.person_id = p.id
WHERE p.name like 'morty%'

/*person_id 14887*/

/*transcript  I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag.
The membership number on the bag started with "48Z".
Only gold members have those bags. The man got into a car with a plate that included "H42W".
        

id 14887	
name Morty Schapiro
licence_ id 118009
address_number 4919
address_street_name Northwestern Dr	
ssn 111564949*/

SELECT * FROM interview i JOIN person p ON i.person_id = p.id
WHERE p.name like 'Annabel Miller'

/*person_id 16371
transcript  I saw the murder happen, and I recognized 
the killer from my gym when I was working out last week on January the 9th.
      

/*el primer asesino es Jeremy Bowers:*/

SELECT * FROM get_fit_now_check_in gc 
JOIN get_fit_now_member gm ON gc.membership_id= gm.id  
JOIN person p ON gm.person_id= p.id 
JOIN drivers_license dl ON p.license_id=dl.id
WHERE gc.membership_id LIKE "48Z%" 
AND dl.plate_number LIKE "%H42W%"


/*Congrats, you found the murderer! But wait, 
there's more... If you think you're up for a challenge,
try querying the interview transcript of the murderer to 
find the real villain behind this crime.
If you feel especially confident in your SQL skills,
try to complete this final step with no more than 2 queries.
Use this same INSERT statement with your new suspect 
to check your answer.*/

 

SELECT * FROM interview i 
JOIN person p ON i.person_id = p.id 
WHERE p.name = "Jeremy Bowers"

/*I was hired by a woman with a lot of money. 
I don't know her name but I know she's 
around 5'5" (65") or 5'7" (67").
She has red hair and she drives a Tesla Model S. 
I know that she attended the SQL Symphony Concert 3 
times in December 2017.*/

SELECT * FROM drivers_license  dl
join person p ON p.license_id = dl.id
join facebook_event_checkin fc ON p.id = fc.person_id
WHERE car_make LIKE 'tesla' AND hair_color like 'red'  AND height Between 65 AND 67 
AND date LIKE '201712%'

/* Miranda Priestly contrato al asesino

Congrats, you found the brains behind the murder! Everyone 
in SQL City hails you as the greatest SQL detective of all time.
Time to break out the champagne!*/

        
