package com.example.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QEmpVO is a Querydsl query type for EmpVO
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QEmpVO extends EntityPathBase<EmpVO> {

    private static final long serialVersionUID = -1009767416L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QEmpVO empVO = new QEmpVO("empVO");

    public final NumberPath<java.math.BigDecimal> comm = createNumber("comm", java.math.BigDecimal.class);

    public final QDeptVO dept;

    public final NumberPath<Integer> empno = createNumber("empno", Integer.class);

    public final StringPath ename = createString("ename");

    public final EnumPath<EmpVO.Gender> gender = createEnum("gender", EmpVO.Gender.class);

    public final DatePath<java.util.Date> hiredate = createDate("hiredate", java.util.Date.class);

    public final StringPath job = createString("job");

    public final QEmpVO mgr;

    public final NumberPath<java.math.BigDecimal> sal = createNumber("sal", java.math.BigDecimal.class);

    public QEmpVO(String variable) {
        this(EmpVO.class, forVariable(variable), INITS);
    }

    public QEmpVO(Path<? extends EmpVO> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QEmpVO(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QEmpVO(PathMetadata metadata, PathInits inits) {
        this(EmpVO.class, metadata, inits);
    }

    public QEmpVO(Class<? extends EmpVO> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.dept = inits.isInitialized("dept") ? new QDeptVO(forProperty("dept")) : null;
        this.mgr = inits.isInitialized("mgr") ? new QEmpVO(forProperty("mgr"), inits.get("mgr")) : null;
    }

}

