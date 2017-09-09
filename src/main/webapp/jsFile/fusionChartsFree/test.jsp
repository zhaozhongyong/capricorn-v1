<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>FusionCharts v3 Documentation</title>
	<script language="JavaScript" src="${pageContext.request.contextPath}/jsFile/fusionChartsFree/JSClass/FusionCharts.js"></script>
	<script language="JavaScript" src="${pageContext.request.contextPath}/jsFile/fusionChartsFree/JSClass/FusionChartsExportComponent.js"></script>
</head>
<body>
	
	<div id="chartdiv" align="center"></div>
	
	<br/>
	
    <div id="fcexpDiv" align="center"></div>
    
    <script type="text/javascript">
    
	   	var chart = new FusionCharts("${pageContext.request.contextPath}/jsFile/fusionChartsFree/Charts/Area2D.swf", "ChartId", "600", "275", "0", "1");
	   	chart.setDataURL("${pageContext.request.contextPath}/jsFile/fusionChartsFree/xml.jsp");		   
	   	chart.render("chartdiv");

    	function reload(){
		   var chart2 = new FusionCharts("${pageContext.request.contextPath}/jsFile/fusionChartsFree/Charts/Area2D.swf", "ChartId", "600", "275", "0", "1");
		   chart2.setDataURL("${pageContext.request.contextPath}/jsFile/fusionChartsFree/xml.jsp");		   
		   chart2.render("chartdiv");
	   	}
		
    	//Render the export component in this
    	//Note: fcExporter1 is the DOM ID of the DIV and should be specified as value of exportHandler
    	//attribute of chart XML.
    	var myExportComponent = new FusionChartsExportObject("fcExporter1", "${pageContext.request.contextPath}/jsFile/fusionChartsFree/Charts/FCExporter.swf");
    	//Customize the component properties
    	//Width and height
    	myExportComponent.componentAttributes.width = '400';
    	myExportComponent.componentAttributes.height = '60';
    	//Background color
    	myExportComponent.componentAttributes.bgColor = 'ffffdd';
    	//Border properties
    	myExportComponent.componentAttributes.borderThickness = '2';
    	myExportComponent.componentAttributes.borderColor = '0372AB';
    	//Font properties
    	myExportComponent.componentAttributes.fontFace = 'Arial';
    	myExportComponent.componentAttributes.fontColor = '0372AB';
    	myExportComponent.componentAttributes.fontSize = '12';
    	//Message - caption of export component
    	myExportComponent.componentAttributes.showMessage = '1';
    	myExportComponent.componentAttributes.message = '在报表上右键导出,然后点此按钮保存图片';
    	//Button visual configuration
    	myExportComponent.componentAttributes.btnWidth = '200';
    	myExportComponent.componentAttributes.btnHeight= '25';
    	myExportComponent.componentAttributes.btnColor = 'E1f5ff';
    	myExportComponent.componentAttributes.btnBorderColor = '0372AB';
    	//Button font properties
    	myExportComponent.componentAttributes.btnFontFace = 'Verdana';
    	myExportComponent.componentAttributes.btnFontColor = '0372AB';
    	myExportComponent.componentAttributes.btnFontSize = '15';
    	//Title of button
    	myExportComponent.componentAttributes.btnsavetitle = '图片已生成,点击保存';
    	myExportComponent.componentAttributes.btndisabledtitle = '报表上右键可以导出图片';
    	//Render the exporter SWF in our DIV fcexpDiv
    	myExportComponent.Render("fcexpDiv");

    	
	</script> 
	
	<input type="button" value="重新加载" onclick="reload()"/>
	
</body>
</html>
