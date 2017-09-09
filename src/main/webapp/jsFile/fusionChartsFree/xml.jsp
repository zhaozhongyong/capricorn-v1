<%@ page language="java" contentType="text/xml; charset=GBK"%>

<%@ page import="java.net.URLEncoder"%>

<% 
	StringBuffer sb = new StringBuffer();
	sb.append("<chart palette='2' caption='月销售额统计表' subcaption='(2010年度)' xAxisName='月份' yAxisMinValue='15000' yAxisName='金额' numberPrefix='￥' showValues='0' ");	
	sb.append(" exportEnabled='1' exportAtClient='1' exportShowMenuItem='1' exportHandler='fcExporter1' ");
	sb.append(" exportFormats='JPG=导出JPG图片|PDF=导出为PDF|PNG=导出为PNG图片' exportDialogMessage='正在导出中...' ");
	sb.append(" exportFileName='统计图' ");
	sb.append(">");
	
	sb.append("<set label='一月' value='17400' />");// link='"+URLEncoder.encode("http://www.baidu.com")+"'
	sb.append("<set label='二月' value='18100' />");
	sb.append("<set label='三月' value='21800' />");
	sb.append("<set label='四月' value='23800' />");	
	sb.append("<set label='五月' value='29600' />");
	sb.append("<set label='六月' value='27600' />");
	sb.append("<set label='七月' value='31800' />");
	sb.append("<set label='八月' value='39700' />");
	sb.append("<set label='九月' value='37800' />");
	sb.append("<set label='十月' value='21900' />");
	sb.append("<set label='十一月' value='32900' />");
	sb.append("<set label='十二月' value='39800' />");
	
	sb.append("<styles>");
		sb.append("<definition>");
		sb.append("<style name='Anim1' type='animation' param='_xscale' start='0' duration='1' />");
		sb.append("<style name='Anim2' type='animation' param='_alpha' start='0' duration='1' />");
		sb.append("<style name='DataShadow' type='Shadow' alpha='20'/>");
		sb.append("</definition>");
		
		sb.append("<application>");
		sb.append("<apply toObject='DIVLINES' styles='Anim1' />");
		sb.append("<apply toObject='HGRID' styles='Anim2' />");
		sb.append("<apply toObject='DATALABELS' styles='DataShadow,Anim2' />");
		sb.append("</application>");
	sb.append("</styles>");
	
	sb.append("</chart>");
		
	out.write(sb.toString());
	
%>

