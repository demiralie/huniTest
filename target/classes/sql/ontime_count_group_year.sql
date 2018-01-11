drop table year_delay;

create table year_delay (
	year int,
	month int,
	count float,
	avg float,
	min float,
	max float,
	stddev float
);

insert into year_delay
select year, month, 
	count(depdelay)  as count, 
	avg(depdelay) as avg,
	min(depdelay) as min,
	max(depdelay) as max,
	stddev(depdelay) as stddev
 from ontime
where depdelay > 0 
group by year,month
order by year,month;

select *from year_delay;
