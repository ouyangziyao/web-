<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>成绩报表</title>
<meta charset="utf-8" />

<style type="text/css">
body{
	background:url(images/13.jpg) no-repeat;
	background-size:100% 100%;
	width:100%;
	height:100%;  
}
.title {
	background: #003b90;
	font-size: 30px;
	text-align: center;
	
}
.title p {
	color: #fff;
	margin:0px;
}
.container{
	
	
	background-color: rgba(240, 255, 255, 0.5); 
    border-radius: 10px;
    width: 700px;
    height: auto;
 
}
#backViewTable{
		border-spacing: 0;
}
</style>
</head>
<body>
	<div class="title">
		<p>成绩报表</p>
	</div>
	<form action="baobiao.jsp" method="post">
		<input type="submit" value="查找">
	</form>
	<div class="container"> 
	<table id="backViewTable" class="table table-hover table-sm table2excel" border="1">
		 <button class="btn btn-primary btn-sm" onclick="tablesToExcel(['backViewTable'], ['ProductDay1'], 'TestBook.xls', 'Excel')">导入 Excel</button>
			<tr>
				<th>学 号</th>
				<th>姓 名</th>
				<th>班级</th>
				<th>MATH</th>
				<th>JAVA</th>
				<th>ENGLISH</th>
				<th>SPORT</th>
				<th>总分</th>
			</tr>
			<script type="text/javascript">var flag=1;</script>
			<c:forEach var="U" items="${list}">
				<tr>
					<td>${U.num}</td>
					<td>${U.name}</td>
					<td>${U.cla}</td>
					<td>${U.math}</td>
					<td>${U.java}</td>
					<td>${U.english}</td>
					<td>${U.sport}</td>
					<td>${U.total}</td>
				</tr>
			</c:forEach>
			<tr>
				<td>平 均 分</td>
				<td></td>
				<td></td>
				<td>${U.avg_math}</td>
				<td>${U.avg_java}</td>
				<td>${U.avg_english}</td>
				<td>${U.avg_sport}</td>
				<td>${U.avg_total}</td>
			</tr>
		</table>
		       

	</div>
</body>

<script>
    var tablesToExcel = (function() {
        var uri = 'data:application/vnd.ms-excel;base64,'
            , tmplWorkbookXML = '<?xml version="1.0"?><?mso-application progid="Excel.Sheet"?><Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet" xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet">'
            + '<DocumentProperties xmlns="urn:schemas-microsoft-com:office:office"><Author>Axel Richter</Author><Created>{created}</Created></DocumentProperties>'
            + '<Styles>'
            + '<Style ss:ID="Currency"><NumberFormat ss:Format="Currency"></NumberFormat></Style>'
            + '<Style ss:ID="Date"><NumberFormat ss:Format="Medium Date"></NumberFormat></Style>'
            + '</Styles>'
            + '{worksheets}</Workbook>'
            , tmplWorksheetXML = '<Worksheet ss:Name="{nameWS}"><Table>{rows}</Table></Worksheet>'
            , tmplCellXML = '<Cell{attributeStyleID}{attributeFormula}><Data ss:Type="{nameType}">{data}</Data></Cell>'
            , base64 = function(s) { return window.btoa(unescape(encodeURIComponent(s))) }
            , format = function(s, c) { return s.replace(/{(\w+)}/g, function(m, p) { return c[p]; }) }
        return function(tables, wsnames, wbname, appname) {
            var ctx = "";
            var workbookXML = "";
            var worksheetsXML = "";
            var rowsXML = "";

            for (var i = 0; i < tables.length; i++) {
                if (!tables[i].nodeType) tables[i] = document.getElementById(tables[i]);

         
                for (var j = 0; j < tables[i].rows.length; j++) {
                    rowsXML += '<Row>';

       
                    for (var k = 0; k < tables[i].rows[j].cells.length-1; k++) {
                        var dataType = tables[i].rows[j].cells[k].getAttribute("data-type");
                        var dataStyle = tables[i].rows[j].cells[k].getAttribute("data-style");
                        var dataValue = tables[i].rows[j].cells[k].getAttribute("data-value");
                        dataValue = (dataValue)?dataValue:tables[i].rows[j].cells[k].innerHTML;
                        var dataFormula = tables[i].rows[j].cells[k].getAttribute("data-formula");
                        dataFormula = (dataFormula)?dataFormula:(appname=='Calc' && dataType=='DateTime')?dataValue:null;
                        ctx = {  attributeStyleID: (dataStyle=='Currency' || dataStyle=='Date')?' ss:StyleID="'+dataStyle+'"':''
                            , nameType: (dataType=='Number' || dataType=='DateTime' || dataType=='Boolean' || dataType=='Error')?dataType:'String'
                            , data: (dataFormula)?'':dataValue
                            , attributeFormula: (dataFormula)?' ss:Formula="'+dataFormula+'"':''
                        };
                        rowsXML += format(tmplCellXML, ctx);
                    }
                    rowsXML += '</Row>'
                }
                ctx = {rows: rowsXML, nameWS: wsnames[i] || 'Sheet' + i};
                worksheetsXML += format(tmplWorksheetXML, ctx);
                rowsXML = "";
            }

            ctx = {created: (new Date()).getTime(), worksheets: worksheetsXML};
            workbookXML = format(tmplWorkbookXML, ctx);

//          查看后台的打印输出
            console.log(workbookXML);

            var link = document.createElement("A");
            link.href = uri + base64(workbookXML);
            link.download = wbname || 'Workbook.xls';
            link.target = '_blank';
            document.body.appendChild(link);
            link.click();
            document.body.removeChild(link);
        }
    })();
    </script>

</html>
