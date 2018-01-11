package com.example.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QAirportVO is a Querydsl query type for AirportVO
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QAirportVO extends EntityPathBase<AirportVO> {

    private static final long serialVersionUID = 1876389835L;

    public static final QAirportVO airportVO = new QAirportVO("airportVO");

    public final StringPath airport = createString("airport");

    public final StringPath city = createString("city");

    public final StringPath country = createString("country");

    public final StringPath iata = createString("iata");

    public final NumberPath<java.math.BigDecimal> lat = createNumber("lat", java.math.BigDecimal.class);

    public final NumberPath<java.math.BigDecimal> lng = createNumber("lng", java.math.BigDecimal.class);

    public final StringPath state = createString("state");

    public QAirportVO(String variable) {
        super(AirportVO.class, forVariable(variable));
    }

    public QAirportVO(Path<? extends AirportVO> path) {
        super(path.getType(), path.getMetadata());
    }

    public QAirportVO(PathMetadata metadata) {
        super(AirportVO.class, metadata);
    }

}

