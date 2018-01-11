drop table ontime;

create table ontime
(
   Year                int,
   Month               int,
   DayofMonth          int,
   DayOfWeek           int,
   DepTime             int,
   CRSDepTime          int,
   ArrTime             int,
   CRSArrTime          int,
   UniqueCarrier       string,
   FlightNum           int,
   TailNum             string,
   ActualElapsedTime   int,
   CRSElapsedTime      int,
   AirTime             int,
   ArrDelay            int,
   DepDelay            int,
   Origin              string,
   Dest                string,
   Distance            int,
   TaxiIn              int,
   TaxiOut             int,
   Cancelled           int,
   CancellationCode    string comment 'A=carrier, B=weather, C=NAS, D=security',
   Diverted            string comment '1=yes, 0=no',
   CarrierDelay        int,
   WeatherDelay        int,
   NASDelay            int,
   SecurityDelay       int,
   LateAircraftDelay   int
) comment 'The data consists of flight arrival and departure details for all commercial flights within the USA, from October 1987 to April 2008'
partitioned by (delayYear int)
row format delimited
	fields terminated by ','
	lines terminated by '\n'
	stored as textfile;
	
load data local inpath '/project/02_Software/dataexpo/1987_nohead.csv'
overwrite into table ontime
partition (delayYear='1987');


select count(*) from ontime;

select * from ontime limit 0, 10;


