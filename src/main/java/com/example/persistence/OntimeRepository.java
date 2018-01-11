package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;

import com.example.domain.OntimeVO;
import com.example.domain.QOntimeVO;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;

public interface OntimeRepository extends JpaRepository<OntimeVO, Long>, QuerydslPredicateExecutor<OntimeVO> {

	public default Predicate makePredicate(String type, String keyword) {

		BooleanBuilder builder = new BooleanBuilder();

		QOntimeVO ontime = QOntimeVO.ontimeVO;

		builder.and(ontime.num.gt(0));
		
		if(type == null){
			return builder;
		}
		
		switch(type){
		case "n":
			builder.and(ontime.num.like("%" + keyword +"%"));
			break;
		case "y":
			builder.and(ontime.year.like("%" + keyword +"%"));
			break;
		case "m":
			builder.and(ontime.month.like("%" + keyword +"%"));
			break;			
		case "d":
			builder.and(ontime.dayofmonth.like("%" + keyword +"%"));
			break;	
		case "u":
			builder.and(ontime.uniquecarrier.like("%" + keyword +"%"));
			break;
		case "o":
			builder.and(ontime.origin.like("%" + keyword +"%"));
			break;				
		}
		return builder;
	}
}
