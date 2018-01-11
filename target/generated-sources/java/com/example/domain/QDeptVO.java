package com.example.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QDeptVO is a Querydsl query type for DeptVO
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QDeptVO extends EntityPathBase<DeptVO> {

    private static final long serialVersionUID = -1274007017L;

    public static final QDeptVO deptVO = new QDeptVO("deptVO");

    public final NumberPath<Integer> deptno = createNumber("deptno", Integer.class);

    public final StringPath dname = createString("dname");

    public final ListPath<EmpVO, QEmpVO> emps = this.<EmpVO, QEmpVO>createList("emps", EmpVO.class, QEmpVO.class, PathInits.DIRECT2);

    public final StringPath loc = createString("loc");

    public QDeptVO(String variable) {
        super(DeptVO.class, forVariable(variable));
    }

    public QDeptVO(Path<? extends DeptVO> path) {
        super(path.getType(), path.getMetadata());
    }

    public QDeptVO(PathMetadata metadata) {
        super(DeptVO.class, metadata);
    }

}

