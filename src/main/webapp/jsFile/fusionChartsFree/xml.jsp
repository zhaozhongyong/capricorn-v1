<%@ page language="java" contentType="text/xml; charset=GBK"%>

<%@ page import="java.net.URLEncoder"%>

<% 
	StringBuffer sb = new StringBuffer();
	sb.append("<chart palette='2' caption='�����۶�ͳ�Ʊ�' subcaption='(2010���)' xAxisName='�·�' yAxisMinValue='15000' yAxisName='���' numberPrefix='��' showValues='0' ");	
	sb.append(" exportEnabled='1' exportAtClient='1' exportShowMenuItem='1' exportHandler='fcExporter1' ");
	sb.append(" exportFormats='JPG=����JPGͼƬ|PDF=����ΪPDF|PNG=����ΪPNGͼƬ' exportDialogMessage='���ڵ�����...' ");
	sb.append(" exportFileName='ͳ��ͼ' ");
	sb.append(">");
	
	sb.append("<set label='һ��' value='17400' />");// link='"+URLEncoder.encode("http://www.baidu.com")+"'
	sb.append("<set label='����' value='18100' />");
	sb.append("<set label='����' value='21800' />");
	sb.append("<set label='����' value='23800' />");	
	sb.append("<set label='����' value='29600' />");
	sb.append("<set label='����' value='27600' />");
	sb.append("<set label='����' value='31800' />");
	sb.append("<set label='����' value='39700' />");
	sb.append("<set label='����' value='37800' />");
	sb.append("<set label='ʮ��' value='21900' />");
	sb.append("<set label='ʮһ��' value='32900' />");
	sb.append("<set label='ʮ����' value='39800' />");
	
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

