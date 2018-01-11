<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>modify.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>
	<div class="panel-heading"></div>
	<div class="panel-body">

    <form id='f1'>

		<div class="form-group">
			<label>NUMBER</label> <input class="form-control" name="num" value="${vo.num}"/>
		</div>

		<div class="form-group">
			<label>YEAR</label> <input class="form-control" name="year" value="${vo.year}"/>
		</div>

		<div class="form-group">
			<label>Month</label> <input class="form-control" name="month" value="${vo.month}"/>
		</div>
		
		<div class="form-group">
			<label>DAYOFMONTH</label> <input class="form-control" name="dayonmonth" value="${vo.dayofmonth}"/>
		</div>

		<div class="form-group">
			<label>DAYOFWEEK</label> <input class="form-control" name="dayofweek" value="${vo.dayofweek}"/>
		</div>

		<div class="form-group">
			<label>DEPTIME</label> <input class="form-control" name="deptime"	value="${vo.deptime}"/>
		</div>
		
		<div class="form-group">
			<label>CRSDEPTIME</label> <input class="form-control" name="CRSDeptime" value="${vo.CRSDeptime}"/>
		</div>

		<div class="form-group">
			<label>ARRTIME</label> <input class="form-control" name="arrtime" value="${vo.arrtime}"/>
		</div>

		<div class="form-group">
			<label>UNIQUECARRIER</label> <input class="form-control" name="uniquecarrier" value="${vo.uniquecarrier}"/>
		</div>
		
		<div class="form-group">
			<label>FLIGHTNUM</label> <input class="form-control" name="flightnum" value="${vo.flightnum}"/>
		</div>

		<div class="form-group">
			<label>TAILNUM</label> <input class="form-control" name="tailnum" value="${vo.tailnum == null ? NULL : vo.tailnum}"/>
		</div>

		<div class="form-group">
			<label>ACTUALELAPSEDTIME</label> <input class="form-control" name="actualelapsedtime" value="${vo.actualelapsedtime}"/>
		</div>
		
		<div class="form-group">
			<label>CRSELAPSEDTIME</label> <input class="form-control" name="CRSelapsedtime" value="${vo.CRSelapsedtime}"/>
		</div>

		<div class="form-group">
			<label>AIRTIME</label> <input class="form-control" name="airtime" value="${vo.airtime == null ? NULL : vo.airtime}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>ARRDELAY</label> <input class="form-control" name="arrdelay" 	value="${vo.arrdelay}"/>
		</div>

		<div class="form-group">
			<label>DEPTDELAY</label> <input class="form-control" name="depdelay" value="${vo.depdelay}"/>
		</div>

		<div class="form-group">
			<label>ORIGIN</label> <input class="form-control" name="origin" value="${vo.origin}"/>
		</div>

		<div class="form-group">
			<label>DEST</label> <input class="form-control" name="dest" value="${vo.dest}"/>
		</div>

		<div class="form-group">
			<label>DISTANCE</label> <input class="form-control" name="distance" value="${vo.distance}"/>
		</div>

		<div class="form-group">
			<label>TAXIIN</label> <input class="form-control" name="taxiin" value="${vo.taxiin == null ? NULL : vo.taxiin}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>TAXIOUT</label> <input class="form-control" name="taxiout" value="${vo.taxiout == null ? NULL : vo.taxiout}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>CANCELLED</label> <input class="form-control" name="cancelled" value="${vo.cancelled}"/>
		</div>

		<div class="form-group">
			<label>CANCELLATIONCODE</label> <input class="form-control" name="cancellationcode" value="${vo.cancellationcode == null ? NULL : vo.cancellationcode}"/>
		</div>

		<div class="form-group">
			<label>DIVERTED</label> <input class="form-control" name="diverted" value="${vo.diverted}"/>
		</div>

		<div class="form-group">
			<label>CARRIERDELAY</label> <input class="form-control" name="carrierdelay" value="${vo.carrierdelay == null ? NULL : vo.carrierdelay}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>WEATHERDELAY</label> <input class="form-control" name="weatherdelay" value="${vo.weatherdelay == null ? NULL : vo.weatherdelay}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>NASDELAY</label> <input class="form-control" name="NASdelay" value="${vo.NASdelay == null ? NULL : vo.NASdelay}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>SECURITYDELAY</label> <input class="form-control" name="securitydelay" value="${vo.securitydelay == null ? NULL : vo.securitydelay}" readonly="readonly"/>
		</div>

		<div class="form-group">
			<label>LATEAIRCRAFTDELAY</label> <input class="form-control" name="lateaircraftdelay" value="${vo.lateaircraftdelay == null ? NULL : vo.lateaircraftdelay}" readonly="readonly"/>
		</div>
		
		<input type='hidden' name="page" value="${pageVO.page}">
		<input type='hidden' name="size" value="${pageVO.size}">
		<input type='hidden' name="type" value="${pageVO.type}">
		<input type='hidden' name="keyword" value="${pageVO.keyword}">
		
	</form>

		<div class="pull-right">
		
		  <a href="#" class="btn btn-warning modbtn">Modify</a>
		
		  <a href="#" class="btn btn-danger delbtn">Delete</a>

		  <a href="/ontime/ontimelist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&num=${vo.num}"
			  class="btn btn-primary">Cancel & Go List</a> 
		</div>

	</div>

	<script type="text/javascript">
	
	$(document).ready(function(){
	
		var formObj = $("#f1");
		
		$(".delbtn").click(function(){
			
			formObj.attr("action","ontimedelete");
			formObj.attr("method", "post");
			
			formObj.submit();
			
		});
		
		$(".modbtn").click(function(){
			
			formObj.attr("action","ontimemodify");
			formObj.attr("method", "post");
			
			formObj.submit();
			
		});
		
		
	});	
	</script>

</body>
</html>