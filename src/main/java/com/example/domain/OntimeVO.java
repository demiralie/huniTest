package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

import lombok.Data;

@Entity
@Table(name="tbl_ontime")
@Data
public class OntimeVO {
	
	@Id
	@TableGenerator(name="idGen", table="id_gen",
						  pkColumnName="seq_name",
						  valueColumnName="nextval", pkColumnValue="123534969" ,
						  allocationSize=1, initialValue=123534969)
	@GeneratedValue(strategy=GenerationType.TABLE, generator="idGen")
	Long num;
   Integer year;
   Integer month;
   Integer dayofmonth;
   Integer dayofweek;
   Integer deptime;
   Integer CRSDeptime;
   Integer arrtime;
   Integer CRSArrtime;
   String uniquecarrier;
   Integer flightnum;
   String tailnum;
   Integer actualelapsedtime;
   Integer CRSelapsedtime;
   Integer airtime;
   Integer arrdelay;
   Integer depdelay;
   String origin;
   String dest;
   Integer distance;
   Integer taxiin;
   Integer taxiout;
   Integer cancelled;
   String cancellationcode;
   String diverted;
   Integer carrierdelay;
   Integer weatherdelay;
   Integer NASdelay;
   Integer securitydelay;
   Integer lateaircraftdelay;
}