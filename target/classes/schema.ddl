
    create table id_gen (
       seq_name varchar(255) not null,
        nextval bigint,
        primary key (seq_name)
    ) type=MyISAM;

    create table tbl_airport (
       iata varchar(255) not null,
        airport varchar(255),
        city varchar(255),
        country varchar(255),
        lat decimal(19,2),
        lng decimal(19,2),
        state varchar(255),
        primary key (iata)
    ) type=MyISAM;

    create table tbl_carrier (
       code varchar(255) not null,
        description varchar(255),
        primary key (code)
    ) type=MyISAM;

    create table tbl_city (
       id integer not null,
        countrycode varchar(255),
        district varchar(255),
        name varchar(255),
        population decimal(19,2),
        primary key (id)
    ) type=MyISAM;

    create table tbl_country (
       code varchar(255) not null,
        GNP float,
        GNPOld float,
        capital integer,
        code2 varchar(255),
        continent varchar(255),
        governmentform varchar(255),
        headofstate varchar(255),
        indepyear integer,
        lifeexpectancy float,
        localname varchar(255),
        name varchar(255),
        population decimal(19,2),
        region varchar(255),
        surfacearea float,
        primary key (code)
    ) type=MyISAM;

    create table tbl_dept (
       deptno integer not null,
        dname varchar(255),
        loc varchar(255),
        primary key (deptno)
    ) type=MyISAM;

    create table tbl_emp (
       empno integer not null,
        comm decimal(19,2),
        ename varchar(255),
        gender varchar(255),
        hiredate date,
        job varchar(255),
        sal decimal(19,2),
        deptno integer,
        mgr integer,
        primary key (empno)
    ) type=MyISAM;

    create table tbl_ontime (
       num bigint not null,
        CRSArrtime integer,
        CRSDeptime integer,
        CRSelapsedtime integer,
        NASdelay integer,
        actualelapsedtime integer,
        airtime integer,
        arrdelay integer,
        arrtime integer,
        cancellationcode varchar(255),
        cancelled integer,
        carrierdelay integer,
        dayofmonth integer,
        dayofweek integer,
        depdelay integer,
        deptime integer,
        dest varchar(255),
        distance integer,
        diverted varchar(255),
        flightnum integer,
        lateaircraftdelay integer,
        month integer,
        origin varchar(255),
        securitydelay integer,
        tailnum varchar(255),
        taxiin integer,
        taxiout integer,
        uniquecarrier varchar(255),
        weatherdelay integer,
        year integer,
        primary key (num)
    ) type=MyISAM;

    create table tbl_webboard (
       bno bigint not null,
        content varchar(255),
        regdate datetime,
        title varchar(255),
        updatedate datetime,
        writer varchar(255),
        primary key (bno)
    ) type=MyISAM;

    alter table tbl_emp 
       add constraint FKi7oweqfp7jnfmu9u18gb191dl 
       foreign key (deptno) 
       references tbl_dept (deptno);

    alter table tbl_emp 
       add constraint FK40s7ax4ribn767fneuqeu8s41 
       foreign key (mgr) 
       references tbl_emp (empno);

    create table id_gen (
       seq_name varchar(255) not null,
        nextval bigint,
        primary key (seq_name)
    ) engine=InnoDB;

    create table tbl_airport (
       iata varchar(255) not null,
        airport varchar(255),
        city varchar(255),
        country varchar(255),
        lat decimal(19,2),
        lng decimal(19,2),
        state varchar(255),
        primary key (iata)
    ) engine=InnoDB;

    create table tbl_carrier (
       code varchar(255) not null,
        description varchar(255),
        primary key (code)
    ) engine=InnoDB;

    create table tbl_city (
       id integer not null,
        countrycode varchar(255),
        district varchar(255),
        name varchar(255),
        population decimal(19,2),
        primary key (id)
    ) engine=InnoDB;

    create table tbl_country (
       code varchar(255) not null,
        GNP float,
        GNPOld float,
        capital integer,
        code2 varchar(255),
        continent varchar(255),
        governmentform varchar(255),
        headofstate varchar(255),
        indepyear integer,
        lifeexpectancy float,
        localname varchar(255),
        name varchar(255),
        population decimal(19,2),
        region varchar(255),
        surfacearea float,
        primary key (code)
    ) engine=InnoDB;

    create table tbl_dept (
       deptno integer not null,
        dname varchar(255),
        loc varchar(255),
        primary key (deptno)
    ) engine=InnoDB;

    create table tbl_emp (
       empno integer not null,
        comm decimal(19,2),
        ename varchar(255),
        gender varchar(255),
        hiredate date,
        job varchar(255),
        sal decimal(19,2),
        deptno integer,
        mgr integer,
        primary key (empno)
    ) engine=InnoDB;

    create table tbl_ontime (
       num bigint not null,
        CRSArrtime integer,
        CRSDeptime integer,
        CRSelapsedtime integer,
        NASdelay integer,
        actualelapsedtime integer,
        airtime integer,
        arrdelay integer,
        arrtime integer,
        cancellationcode varchar(255),
        cancelled integer,
        carrierdelay integer,
        dayofmonth integer,
        dayofweek integer,
        depdelay integer,
        deptime integer,
        dest varchar(255),
        distance integer,
        diverted varchar(255),
        flightnum integer,
        lateaircraftdelay integer,
        month integer,
        origin varchar(255),
        securitydelay integer,
        tailnum varchar(255),
        taxiin integer,
        taxiout integer,
        uniquecarrier varchar(255),
        weatherdelay integer,
        year integer,
        primary key (num)
    ) engine=InnoDB;

    create table tbl_webboard (
       bno bigint not null,
        content varchar(255),
        regdate datetime,
        title varchar(255),
        updatedate datetime,
        writer varchar(255),
        primary key (bno)
    ) engine=InnoDB;

    alter table tbl_emp 
       add constraint FKi7oweqfp7jnfmu9u18gb191dl 
       foreign key (deptno) 
       references tbl_dept (deptno);

    alter table tbl_emp 
       add constraint FK40s7ax4ribn767fneuqeu8s41 
       foreign key (mgr) 
       references tbl_emp (empno);

    create table id_gen (
       seq_name varchar(255) not null,
        nextval bigint,
        primary key (seq_name)
    ) engine=InnoDB;

    create table tbl_airport (
       iata varchar(255) not null,
        airport varchar(255),
        city varchar(255),
        country varchar(255),
        lat decimal(19,2),
        lng decimal(19,2),
        state varchar(255),
        primary key (iata)
    ) engine=InnoDB;

    create table tbl_carrier (
       code varchar(255) not null,
        description varchar(255),
        primary key (code)
    ) engine=InnoDB;

    create table tbl_city (
       id integer not null,
        countrycode varchar(255),
        district varchar(255),
        name varchar(255),
        population decimal(19,2),
        primary key (id)
    ) engine=InnoDB;

    create table tbl_country (
       code varchar(255) not null,
        GNP float,
        GNPOld float,
        capital integer,
        code2 varchar(255),
        continent varchar(255),
        governmentform varchar(255),
        headofstate varchar(255),
        indepyear integer,
        lifeexpectancy float,
        localname varchar(255),
        name varchar(255),
        population decimal(19,2),
        region varchar(255),
        surfacearea float,
        primary key (code)
    ) engine=InnoDB;

    create table tbl_dept (
       deptno integer not null,
        dname varchar(255),
        loc varchar(255),
        primary key (deptno)
    ) engine=InnoDB;

    create table tbl_emp (
       empno integer not null,
        comm decimal(19,2),
        ename varchar(255),
        gender varchar(255),
        hiredate date,
        job varchar(255),
        sal decimal(19,2),
        deptno integer,
        mgr integer,
        primary key (empno)
    ) engine=InnoDB;

    create table tbl_ontime (
       num bigint not null,
        CRSArrtime integer,
        CRSDeptime integer,
        CRSelapsedtime integer,
        NASdelay integer,
        actualelapsedtime integer,
        airtime integer,
        arrdelay integer,
        arrtime integer,
        cancellationcode varchar(255),
        cancelled integer,
        carrierdelay integer,
        dayofmonth integer,
        dayofweek integer,
        depdelay integer,
        deptime integer,
        dest varchar(255),
        distance integer,
        diverted varchar(255),
        flightnum integer,
        lateaircraftdelay integer,
        month integer,
        origin varchar(255),
        securitydelay integer,
        tailnum varchar(255),
        taxiin integer,
        taxiout integer,
        uniquecarrier varchar(255),
        weatherdelay integer,
        year integer,
        primary key (num)
    ) engine=InnoDB;

    create table tbl_webboard (
       bno bigint not null,
        content varchar(255),
        regdate datetime,
        title varchar(255),
        updatedate datetime,
        writer varchar(255),
        primary key (bno)
    ) engine=InnoDB;

    alter table tbl_emp 
       add constraint FKi7oweqfp7jnfmu9u18gb191dl 
       foreign key (deptno) 
       references tbl_dept (deptno);

    alter table tbl_emp 
       add constraint FK40s7ax4ribn767fneuqeu8s41 
       foreign key (mgr) 
       references tbl_emp (empno);
