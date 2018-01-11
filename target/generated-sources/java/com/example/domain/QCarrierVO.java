package com.example.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QCarrierVO is a Querydsl query type for CarrierVO
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCarrierVO extends EntityPathBase<CarrierVO> {

    private static final long serialVersionUID = 1550195384L;

    public static final QCarrierVO carrierVO = new QCarrierVO("carrierVO");

    public final StringPath code = createString("code");

    public final StringPath description = createString("description");

    public QCarrierVO(String variable) {
        super(CarrierVO.class, forVariable(variable));
    }

    public QCarrierVO(Path<? extends CarrierVO> path) {
        super(path.getType(), path.getMetadata());
    }

    public QCarrierVO(PathMetadata metadata) {
        super(CarrierVO.class, metadata);
    }

}

