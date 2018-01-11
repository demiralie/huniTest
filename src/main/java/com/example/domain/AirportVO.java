package com.example.domain;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="tbl_airport")	
@Data
public class AirportVO {

	@Id
	String iata;
	String airport;
	String city;
	String state;
	String country;
	BigDecimal lat;
	BigDecimal lng;
}