package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.DeptVO;
import com.example.domain.QDeptVO;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;

public interface DeptRepository extends JpaRepository<DeptVO, Integer>, QuerydslPredicateExecutor<DeptVO> {

	public default Predicate makePredicate(String type, String keyword) {

		BooleanBuilder builder = new BooleanBuilder();

		QDeptVO dept = QDeptVO.deptVO;

		builder.and(dept.deptno.gt(0));

		if(type == null){
			return builder;
		}
		
		switch(type){
		case "d":
			builder.and(dept.deptno.like("%" + keyword +"%"));
			break;
		case "n":
			builder.and(dept.dname.like("%" + keyword +"%"));
			break;
		case "l":
			builder.and(dept.loc.like("%" + keyword +"%"));
			break;
		}
		
		return builder;
	}

}
