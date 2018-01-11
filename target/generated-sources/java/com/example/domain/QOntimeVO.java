package com.example.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QOntimeVO is a Querydsl query type for OntimeVO
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QOntimeVO extends EntityPathBase<OntimeVO> {

    private static final long serialVersionUID = 1238646014L;

    public static final QOntimeVO ontimeVO = new QOntimeVO("ontimeVO");

    public final NumberPath<Integer> actualelapsedtime = createNumber("actualelapsedtime", Integer.class);

    public final NumberPath<Integer> airtime = createNumber("airtime", Integer.class);

    public final NumberPath<Integer> arrdelay = createNumber("arrdelay", Integer.class);

    public final NumberPath<Integer> arrtime = createNumber("arrtime", Integer.class);

    public final StringPath cancellationcode = createString("cancellationcode");

    public final NumberPath<Integer> cancelled = createNumber("cancelled", Integer.class);

    public final NumberPath<Integer> carrierdelay = createNumber("carrierdelay", Integer.class);

    public final NumberPath<Integer> CRSArrtime = createNumber("CRSArrtime", Integer.class);

    public final NumberPath<Integer> CRSDeptime = createNumber("CRSDeptime", Integer.class);

    public final NumberPath<Integer> CRSelapsedtime = createNumber("CRSelapsedtime", Integer.class);

    public final NumberPath<Integer> dayofmonth = createNumber("dayofmonth", Integer.class);

    public final NumberPath<Integer> dayofweek = createNumber("dayofweek", Integer.class);

    public final NumberPath<Integer> depdelay = createNumber("depdelay", Integer.class);

    public final NumberPath<Integer> deptime = createNumber("deptime", Integer.class);

    public final StringPath dest = createString("dest");

    public final NumberPath<Integer> distance = createNumber("distance", Integer.class);

    public final StringPath diverted = createString("diverted");

    public final NumberPath<Integer> flightnum = createNumber("flightnum", Integer.class);

    public final NumberPath<Integer> lateaircraftdelay = createNumber("lateaircraftdelay", Integer.class);

    public final NumberPath<Integer> month = createNumber("month", Integer.class);

    public final NumberPath<Integer> NASdelay = createNumber("NASdelay", Integer.class);

    public final NumberPath<Long> num = createNumber("num", Long.class);

    public final StringPath origin = createString("origin");

    public final NumberPath<Integer> securitydelay = createNumber("securitydelay", Integer.class);

    public final StringPath tailnum = createString("tailnum");

    public final NumberPath<Integer> taxiin = createNumber("taxiin", Integer.class);

    public final NumberPath<Integer> taxiout = createNumber("taxiout", Integer.class);

    public final StringPath uniquecarrier = createString("uniquecarrier");

    public final NumberPath<Integer> weatherdelay = createNumber("weatherdelay", Integer.class);

    public final NumberPath<Integer> year = createNumber("year", Integer.class);

    public QOntimeVO(String variable) {
        super(OntimeVO.class, forVariable(variable));
    }

    public QOntimeVO(Path<? extends OntimeVO> path) {
        super(path.getType(), path.getMetadata());
    }

    public QOntimeVO(PathMetadata metadata) {
        super(OntimeVO.class, metadata);
    }

}

