package com.example.domain;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.TableGenerator;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Entity
@Table(name = "tbl_webboard")
@EqualsAndHashCode(of = "bno")
@ToString
public class WebBoardVO {

	@Id
	@TableGenerator(name = "idGen", table = "id_gen", pkColumnName = "seq_name", valueColumnName = "nextval", allocationSize = 10, initialValue = 100)
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "idGen")
	private Long bno;
	private String title;

	private String writer;

	private String content;

	@CreationTimestamp
	private Timestamp regdate;
	@UpdateTimestamp
	private Timestamp updatedate;
}
