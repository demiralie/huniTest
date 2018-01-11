package com.example.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QCityVO is a Querydsl query type for CityVO
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCityVO extends EntityPathBase<CityVO> {

    private static final long serialVersionUID = -1298818115L;

    public static final QCityVO cityVO = new QCityVO("cityVO");

    public final StringPath countrycode = createString("countrycode");

    public final StringPath district = createString("district");

    public final NumberPath<Integer> id = createNumber("id", Integer.class);

    public final StringPath name = createString("name");

    public final NumberPath<java.math.BigInteger> population = createNumber("population", java.math.BigInteger.class);

    public QCityVO(String variable) {
        super(CityVO.class, forVariable(variable));
    }

    public QCityVO(Path<? extends CityVO> path) {
        super(path.getType(), path.getMetadata());
    }

    public QCityVO(PathMetadata metadata) {
        super(CityVO.class, metadata);
    }

}

