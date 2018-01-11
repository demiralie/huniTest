package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;

import com.example.domain.CarrierVO;
import com.example.domain.QCarrierVO;

public interface CarrierRepository extends JpaRepository<CarrierVO, String>, QuerydslPredicateExecutor<CarrierVO>{
	
	public default Predicate makePredicate(String type, String keyword){
		
		BooleanBuilder builder = new BooleanBuilder();
		
		QCarrierVO carrier = QCarrierVO.carrierVO;
		
		builder.and(carrier.code.gt(""));
		
		if(type == null){
			return builder;
		}
		
		switch(type){
		case "c":
			builder.and(carrier.code.like("%" + keyword +"%"));
			break;
		case "d":
			builder.and(carrier.description.like("%" + keyword +"%"));
			break;
		}
		
		return builder;
	}
}
