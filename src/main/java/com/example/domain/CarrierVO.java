package com.example.domain;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="tbl_carrier")	
@Data
public class CarrierVO {

	@Id
	String code;
	String description;
	
}
