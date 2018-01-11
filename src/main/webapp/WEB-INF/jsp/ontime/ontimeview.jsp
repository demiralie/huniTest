<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html">
<html>
<head>
<meta charset="UTF-8">
<title>deptview.jsp</title>

<c:if test="${false}">
	<link rel="stylesheet" href="../../css/bootstrap.css">
	<link rel="stylesheet" href="../../css/animate.css">
</c:if>

</head>
<body>
	<div class="panel-heading"></div>
	<div class="panel-body">


		<div class="form-group">
			<label>Number</label> <input class="form-control" name="num" value="${vo.num}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Year</label> <input class="form-control" name="year" value="${vo.year}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Month</label> <input class="form-control" name="month" value="${vo.month}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>DayOfMonth</label> <input class="form-control" name="dayonmonth" value="${vo.dayofmonth}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>DayOfWeek</label> <input class="form-control" name="dayofweek" value="${vo.dayofweek}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>DepTime</label> <input class="form-control" name="deptime"	value="${vo.deptime}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>CRSDepTime</label> <input class="form-control" name="CRSDeptime" value="${vo.CRSDeptime}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>ArrTime</label> <input class="form-control" name="arrtime" value="${vo.arrtime}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>UniqueCarrier</label> <input class="form-control" name="uniquecarrier" value="${vo.uniquecarrier}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>FlightNum</label> <input class="form-control" name="flightnum" value="${vo.flightnum}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>TailNum</label> <input class="form-control" name="tailnum" value="${vo.tailnum == null ? NULL : vo.tailnum}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>ActualElapsedTime</label> <input class="form-control" name="actualelapsedtime" value="${vo.actualelapsedtime}" readonly="readonly" />
		</div>
		
		<div class="form-group">
			<label>CRSElapsedTime</label> <input class="form-control" name="CRSelapsedtime" value="${vo.CRSelapsedtime}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>AirTime</label> <input class="form-control" name="airtime" value="${vo.airtime == null ? NULL : vo.airtime}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>ArrDelay</label> <input class="form-control" name="arrdelay" 	value="${vo.arrdelay}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>DeptDelay</label> <input class="form-control" name="depdelay" value="${vo.depdelay}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Origin</label> <input class="form-control" name="origin" value="${vo.origin}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Dest</label> <input class="form-control" name="dest" value="${vo.dest}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Distance</label> <input class="form-control" name="distance" value="${vo.distance}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>TaxiIn</label> <input class="form-control" name="taxiin" value="${vo.taxiin == null ? NULL : vo.taxiin}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>TaxiOut</label> <input class="form-control" name="taxiout" value="${vo.taxiout == null ? NULL : vo.taxiout}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Cancelled</label> <input class="form-control" name="cancelled" value="${vo.cancelled}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>CancellationCode</label> <input class="form-control" name="cancellationcode" value="${vo.cancellationcode == null ? NULL : vo.cancellationcode}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>Diverted</label> <input class="form-control" name="diverted" value="${vo.diverted}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>CarrierDelay</label> <input class="form-control" name="carrierdelay" value="${vo.carrierdelay == null ? NULL : vo.carrierdelay}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>WeatherDelay</label> <input class="form-control" name="weatherdelay" value="${vo.weatherdelay == null ? NULL : vo.weatherdelay}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>NASDelay</label> <input class="form-control" name="NASdelay" value="${vo.NASdelay == null ? NULL : vo.NASdelay}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>SecurityDelay</label> <input class="form-control" name="securitydelay" value="${vo.securitydelay == null ? NULL : vo.securitydelay}" readonly="readonly" />
		</div>

		<div class="form-group">
			<label>LateAircraftDelay</label> <input class="form-control" name="lateaircraftdelay" value="${vo.lateaircraftdelay == null ? NULL : vo.lateaircraftdelay}" readonly="readonly" />
		</div>
		

		<div class="pull-right">
			<a href="/ontime/ontimemodify?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&num=${vo.num}" 
				class="btn btn-default">Modify/Delete</a> 
			             
			<a href="/ontime/ontimelist?page=${pageVO.page}&size=${pageVO.size}&type=${pageVO.type}&keyword=${pageVO.keyword}&num=${vo.num}" 
				class="btn btn-primary">Go List</a> 
		</div>

	</div>

</body>
</html>