package com.example.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.Generated;
import com.querydsl.core.types.Path;


/**
 * QWebBoardVO is a Querydsl query type for WebBoardVO
 */
@Generated("com.querydsl.codegen.EntitySerializer")
public class QWebBoardVO extends EntityPathBase<WebBoardVO> {

    private static final long serialVersionUID = 938659844L;

    public static final QWebBoardVO webBoardVO = new QWebBoardVO("webBoardVO");

    public final NumberPath<Long> bno = createNumber("bno", Long.class);

    public final StringPath content = createString("content");

    public final DateTimePath<java.sql.Timestamp> regdate = createDateTime("regdate", java.sql.Timestamp.class);

    public final StringPath title = createString("title");

    public final DateTimePath<java.sql.Timestamp> updatedate = createDateTime("updatedate", java.sql.Timestamp.class);

    public final StringPath writer = createString("writer");

    public QWebBoardVO(String variable) {
        super(WebBoardVO.class, forVariable(variable));
    }

    public QWebBoardVO(Path<? extends WebBoardVO> path) {
        super(path.getType(), path.getMetadata());
    }

    public QWebBoardVO(PathMetadata metadata) {
        super(WebBoardVO.class, metadata);
    }

}

