package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;

import com.example.domain.AirportVO;
import com.example.domain.QAirportVO;

public interface AirportRepository extends JpaRepository<AirportVO, String>, QuerydslPredicateExecutor<AirportVO>{
	
	public default Predicate makePredicate(String type, String keyword){
		
		BooleanBuilder builder = new BooleanBuilder();
		
		QAirportVO airport = QAirportVO.airportVO;
		
		builder.and(airport.iata.gt(""));
		
		if(type == null){
			return builder;
		}
		
		switch(type){
		case "i":
			builder.and(airport.iata.like("%" + keyword +"%"));
			break;
		case "a":
			builder.and(airport.airport.like("%" + keyword +"%"));
			break;
		case "c":
			builder.and(airport.city.like("%" + keyword +"%"));
			break;
		}
		
		return builder;
	}
}
