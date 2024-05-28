


ALTER TABLE subjects
ADD Tag NVARCHAR(MAX);

update subjects set Tag = '#toan';
update subjects set img = 'course3.jpg';

----------- query
select * from subjects

SELECT TOP 8 * FROM subjects order by creater_at desc