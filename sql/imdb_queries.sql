1.select name from movies where year=1995;

2.select count(actor_id) as AllActors from movies m join roles r on m.id=r.movie_id
where m.name='Lost in Translation';

3.select first_name, last_name from actors where id in
 (select actor_id from roles where movie_id=(select id from movies where name='Lost in Translation'));

4.select first_name,last_name from directors where id=(select director_id from movies_directors 
where movie_id=(select id from movies where name='Fight Club'));

5.select count(movie_id) from movies_directors where director_id=(select id from directors where
 first_name='Clint' and last_name='Eastwood');

6.select name from movies where id=(select movie_id from movies_directors where 
director_id=(select id from directors where first_name='Clint' and last_name='Eastwood'));

7.select first_name,last_name from directors where
id in (select director_id from movies_directors where movie_id in
 (select movie_id from movies_genres where genre='Horror'));

8.select first_name,last_name from actors where id IN(select actor_id from
 roles where movie_id in (select movie_id from movies_directors where 
director_id=(select id from directors where first_name='Christopher' and last_name='Nolan')));
