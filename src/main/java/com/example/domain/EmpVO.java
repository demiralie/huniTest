package com.example.domain;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.ToString;


@Entity
@Table(name = "tbl_emp")
@Data
@ToString(exclude = { "mgr", "dept" })
public class EmpVO {

	public enum Gender {
		M, F;
	}

	@Id
	@TableGenerator(name = "idGen", table = "id_gen", pkColumnName = "seq_name", valueColumnName = "nextval", allocationSize = 10, initialValue = 7000)
	@GeneratedValue(strategy = GenerationType.TABLE, generator = "idGen")
	private Integer empno;
	private String ename;
	@Enumerated(EnumType.STRING)
	private Gender gender; // enum 타입을 그냥 하면 정수로 만들어짐(enum의 index덕분)
	
	private String job;

	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="mgr")
	private EmpVO mgr;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date hiredate;
	
	private BigDecimal sal;
	private BigDecimal comm;
	
	// private Integer deptno;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "deptno")
	private DeptVO dept;

}
