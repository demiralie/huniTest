package com.example.domain;

import java.math.BigInteger;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="tbl_city")	
@Data
//@ToString(exclude={"codes"})
public class CityVO {

	@Id
	Integer id;
	String name;
	String district;
	BigInteger population;
	String countrycode;
	
//	@ManyToOne(fetch=FetchType.LAZY)
//	@JoinColumn(name="code")
//	private CountryVO code;
}