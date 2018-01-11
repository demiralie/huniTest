package com.example.persistence;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.repository.CrudRepository;

import com.example.domain.EmpVO;
import com.example.domain.QEmpVO;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.Predicate;

public interface EmpRepository extends JpaRepository<EmpVO, Integer>, QuerydslPredicateExecutor<EmpVO> {

	public default Predicate makePredicate(String type, String keyword) {

		BooleanBuilder builder = new BooleanBuilder();

		QEmpVO emp = QEmpVO.empVO;

		builder.and(emp.empno.gt(0));
		if(type == null){
			return builder;
		}
		
		switch(type){
		case "e":
			builder.and(emp.ename.like("%" + keyword +"%"));
			break;
		case "d":
			builder.and(emp.dept.deptno.like("%" + keyword +"%"));
			break;
		case "dn":
			builder.and(emp.dept.dname.like("%" + keyword +"%"));
			break;
		case "l":
			builder.and(emp.dept.loc.like("%" + keyword +"%"));
			break;			
		}
		
		
		return builder;
	}

}
