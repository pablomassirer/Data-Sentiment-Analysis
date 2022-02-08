-- drop table if exists teste_emocoes;
-- create table teste_emocoes(
-- 	id bigint,
-- 	tweets_text varchar(1000),
-- 	tweets_date varchar(400),
-- 	simbolo varchar(5),
-- 	sentimento varchar(10) 
-- );

-- alter table teste modify column `text` varchar(1000) not null default("N/A")

-- delete from teste_emocoes;

-- desc teste_emocoes;

-- insert into teste_emocoes (id, tweets_text, tweets_date)
-- select ifnull(substr(substring_index(Content, '"', 2) , 2), 'N/A'), 
-- if(substring_index(substring_index(Content, '"', 4), '"', -1) = '', 'N/A', substring_index(substring_index(Content, '"', 4), '"', -1)), 
-- if(substring_index(substring_index(Content, '","', -1), '"', 1) = '', 'N/A', substring_index(substring_index(Content, '","', -1), '"', 1)) 
-- from tweets where length(Content) > 1 and length(substring_index(substring_index(Content, '","', -1), '"', 1)) = 30;	


-- update teste_emocoes set simbolo = 
-- case 
-- 	when tweets_text like '%:)%' then ':)'
-- 	when tweets_text like '%: )%' then ': )'
-- 	when tweets_text like '%:D%' then ':D'
-- 	when tweets_text like '%:O%' then ':O'
-- 	when tweets_text like '%:V%' then ':V'
-- 	when tweets_text like '%xD%' then 'xD'
-- 	when tweets_text like '%:p%' then ':P'
-- 	when tweets_text like '%:/%' then ':/'
-- 	when tweets_text like '%:(%' then ':('
-- 	when tweets_text like '%:-)%' then ':-)'
-- 	when tweets_text like '%:-(%' then ':-('
-- 	when tweets_text like '%:´)%' then ':´)'
-- 	when tweets_text like '%:´´)%' then ':´´)'
-- 	when tweets_text like '%:´(%' then ':´('
-- 	else 'N/A'
-- end;

-- update teste_emocoes set sentimento = 
-- case 
-- 	when simbolo in (':)', ':D', 'xD', ':P', ':-)', ': )') then 'Positivo'  
-- 	when simbolo in (':O', ':V') then 'Neutro'
-- 	when simbolo in (':(', ':/',':´(', ':´´(', ':-(') then 'Negativo'
-- 	else 'N/A'
-- end;


-- update teste_emocoes te
-- set tweet_date = 
-- select substring_index(substring_index(t.Content, '","', -1), '"', 1) from tweets as t
-- where substr(substring_index(t.Content, '"', 2) , 2) = te.id;

SELECT * FROM teste_emocoes;

-- SELECT * FROM mysql.help_ke;



