package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;

import com.example.domain.CityVO;
import com.example.domain.QCityVO;

public interface CityRepository extends JpaRepository<CityVO, Integer>, QuerydslPredicateExecutor<CityVO>{
	
	public default Predicate makePredicate(String type, String keyword){
		
		BooleanBuilder builder = new BooleanBuilder();
		
		QCityVO citys = QCityVO.cityVO;
		
		builder.and(citys.id.gt(0));
		
		if(type == null){
			return builder;
		}
		
		switch(type){
		case "i":
			builder.and(citys.id.like("%" + keyword +"%"));
			break;
		case "n":
			builder.and(citys.name.like("%" + keyword +"%"));
			break;
		case "cc":
			builder.and(citys.countrycode.like("%" + keyword +"%"));
			break;
		}
		
		return builder;
	}
}
