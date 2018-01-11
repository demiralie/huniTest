package com.example.domain;


import java.math.BigInteger;
import java.util.List;

import javax.annotation.Nullable;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMin;

import lombok.Data;
import lombok.ToString;

@Entity
@Table(name="tbl_country")	
@Data
//@ToString(exclude={"citys"})
public class CountryVO {
	
//	public enum continent {
//		Asia, Europe, NorthAmerica , Africa , Oceania , Antarctica , SouthAmerica
//	}
	
	@Id
	String code; // primary key
	String name;
//	@Enumerated(EnumType.STRING)
//	continent continent;
	String continent;
	String region;
	@Nullable
	Float surfacearea;
	Integer indepyear;
	BigInteger population;
	Float lifeexpectancy;
	Float GNP ;
	Float GNPOld;
	String localname;
	String governmentform;
	String headofstate;
	Integer capital;
	String code2;
//	
//	@OneToMany(mappedBy="city", fetch=FetchType.LAZY)
//	List(CityVO) citys;
}
