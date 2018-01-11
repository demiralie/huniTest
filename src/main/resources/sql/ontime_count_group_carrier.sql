select uniquecarrier, count(*), count(depdelay)
 from ontime
group by uniquecarrier
order by uniquecarrier;
