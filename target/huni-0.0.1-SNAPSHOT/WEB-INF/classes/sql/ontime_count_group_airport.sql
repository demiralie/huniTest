select origin,dest, count(*), count(depdelay)
 from ontime
group by origin, dest
order by origin, dest;
