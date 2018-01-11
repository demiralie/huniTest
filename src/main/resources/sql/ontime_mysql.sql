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
   UniqueCarrier       varchar(5),
   FlightNum           int,
   TailNum             varchar(8),
   ActualElapsedTime   int,
   CRSElapsedTime      int,
   AirTime             int,
   ArrDelay            int,
   DepDelay            int,
   Origin              varchar(3),
   Dest                varchar(3),
   Distance            int,
   TaxiIn              int,
   TaxiOut             int,
   Cancelled           int,
   CancellationCode    varchar(1),
   Diverted            varchar(1),
   CarrierDelay        int,
   WeatherDelay        int,
   NASDelay            int,
   SecurityDelay       int,
   LateAircraftDelay   int
);


