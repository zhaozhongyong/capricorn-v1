<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>FusionCharts v3 Documentation</title>
	<script language="JavaScript" src="${pageContext.request.contextPath}/jsFile/fusionWidgets/JSClass/FusionCharts.js"></script>
</head>
<body>
	
	<div id="chartdiv" align="center"></div>
	
    <script type="text/javascript">
    	var myChart = new FusionCharts("${pageContext.request.contextPath}/jsFile/fusionWidgets/Charts/AngularGauge.swf", "myChartId", "270", "270", "0", "0");
		myChart.setDataURL("${pageContext.request.contextPath}/jsFile/fusionWidgets/xml.jsp");
		myChart.render("chartdiv");
	
    	function reload(){
    		var myChart = new FusionCharts("${pageContext.request.contextPath}/jsFile/fusionWidgets/Charts/AngularGauge.swf", "myChartId", "270", "270", "0", "0");
    		myChart.setDataURL("${pageContext.request.contextPath}/jsFile/fusionWidgets/xml.jsp");
    		myChart.render("chartdiv");
	   	}
		
	</script> 
	
	<input type="button" value="重新加载" onclick="reload()"/>
	
</body>
</html>
