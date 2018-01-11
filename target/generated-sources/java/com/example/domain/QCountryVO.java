package com.example.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QCountryVO is a Querydsl query type for CountryVO
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QCountryVO extends EntityPathBase<CountryVO> {

    private static final long serialVersionUID = -1556683818L;

    public static final QCountryVO countryVO = new QCountryVO("countryVO");

    public final NumberPath<Integer> capital = createNumber("capital", Integer.class);

    public final StringPath code = createString("code");

    public final StringPath code2 = createString("code2");

    public final StringPath continent = createString("continent");

    public final NumberPath<Float> GNP = createNumber("GNP", Float.class);

    public final NumberPath<Float> GNPOld = createNumber("GNPOld", Float.class);

    public final StringPath governmentform = createString("governmentform");

    public final StringPath headofstate = createString("headofstate");

    public final NumberPath<Integer> indepyear = createNumber("indepyear", Integer.class);

    public final NumberPath<Float> lifeexpectancy = createNumber("lifeexpectancy", Float.class);

    public final StringPath localname = createString("localname");

    public final StringPath name = createString("name");

    public final NumberPath<java.math.BigInteger> population = createNumber("population", java.math.BigInteger.class);

    public final StringPath region = createString("region");

    public final NumberPath<Float> surfacearea = createNumber("surfacearea", Float.class);

    public QCountryVO(String variable) {
        super(CountryVO.class, forVariable(variable));
    }

    public QCountryVO(Path<? extends CountryVO> path) {
        super(path.getType(), path.getMetadata());
    }

    public QCountryVO(PathMetadata metadata) {
        super(CountryVO.class, metadata);
    }

}

