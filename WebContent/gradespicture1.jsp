<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>柱状图</title>
<meta charset="utf-8" />

<link rel="stylesheet" type="text/css" href="/css/barchart.css">
<link rel="stylesheet" type="text/css" href="/css/nav.css">
</head>
<body>
	<div class="title">
		<p>柱状图</p>
	<form action="gradespicture.jsp" method="post">
		<input type="submit" value="重新查找">
	</form>


	<div id="container"	style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	<p>数据表格</p>
	<table id="datatable">
	
		<thead>
			<tr>
				<th>学号 姓名</th>
				<c:forEach var="U" items="${list}">
					<th>${U.num} ${U.name}</th>
				</c:forEach>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>MATH</th>
				<c:forEach var="U" items="${list}">
					<td>${U.math}</td>
				</c:forEach>
			</tr>
			<tr>
				<th>JAVA</th>
				<c:forEach var="U" items="${list}">
					<td>${U.java}</td>
				</c:forEach>

			</tr>
			<tr>
				<th>ENGLISH</th>
				<c:forEach var="U" items="${list}">
					<td>${U.english}</td>
				</c:forEach>

			</tr>
			<tr>
				<th>sport</th>
				<c:forEach var="U" items="${list}">
					<td>${U.sport}</td>
				</c:forEach>
			</tr>

		</tbody>
	</table>

</body>
<script src="https://code.highcharts.com.cn/highcharts/highcharts.js"></script>
<script	src="https://code.highcharts.com.cn/highcharts/modules/exporting.js"></script>
<script src="https://code.highcharts.com.cn/highcharts/modules/data.js"></script>
<script	src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
<script type="text/javascript">
	var chart = Highcharts.chart('container', {
		data : {
			table : 'datatable'
		},
		chart : {
			type : 'column'
		},
		title : {
			text : '从 HTML 表格中提取数据并生成图表'
		},
		yAxis : {
			allowDecimals : false,
			title : {
				text : '分',
				rotation : 0
			}
		},
		tooltip : {
			formatter : function() {
				return '<b>' + this.series.name + '</b><br/>' +
					this.point.y + '分' + this.point.name.toLowerCase();
			}
		}
	});
</script>
</html>
