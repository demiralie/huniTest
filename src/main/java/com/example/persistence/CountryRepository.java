package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;

import com.example.domain.CountryVO;
import com.example.domain.QCountryVO;

public interface CountryRepository extends JpaRepository<CountryVO, String>, QuerydslPredicateExecutor<CountryVO>{
	
	public default Predicate makePredicate(String type, String keyword){
		
		BooleanBuilder builder = new BooleanBuilder();
		
		QCountryVO countrys = QCountryVO.countryVO;
		
		builder.and(countrys.code.gt(""));
		
		if(type == null){
			return builder;
		}
		
		switch(type){
		case "c":
			builder.and(countrys.code.like("%" + keyword +"%"));
			break;
		case "n":
			builder.and(countrys.name.like("%" + keyword +"%"));
			break;
		}
		
		return builder;
	}
}
