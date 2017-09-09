<%@ page language="java" contentType="text/xml; charset=GBK"%>

<%@ page import="java.net.URLEncoder"%>

<% 
	StringBuffer sb = new StringBuffer();
	
	sb.append("<chart bgColor='333333' bgAlpha='100' gaugeStartAngle='90' gaugeEndAngle='-270' lowerLimit='0' upperLimit='12' lowerLimitDisplay=' ' upperLimitDisplay='12' majorTMNumber='12' majorTMThickness='3' majorTMColor='FFFFFF' majorTMHeight='7' minorTMNumber='4' minorTMColor='FFFFFF' minorTMHeight='4' placeValuesInside='1' tickValueStep='3' tickValueDistance='20' gaugeOuterRadius='95' gaugeInnerRadius='95' showShadow='0' pivotRadius='6' pivotFillColor='FFFFFF' annRenderDelay='0'>");
	sb.append("<dials>");
	sb.append("<dial value='5' color='FFFFFF' baseWidth='3' topWidth='1' radius='70' rearExtension='12'/>");
	sb.append("</dials>");
	sb.append("<annotations>");
	sb.append("<annotationGroup id='Grp1' showBelow='1'>");
	sb.append("<annotation type='circle' x='135' y='135' color='EBF0F4,85898C,484C4F,C5C6C8' fillRatio='30,30,30,10' fillAngle='270' radius='120' fillPattern='linear' />");
	sb.append("<annotation type='circle' x='135' y='135' color='8E8E8E,83878A,E7E7E7' fillAngle='270' radius='105' fillPattern='linear' />");
	sb.append("<annotation type='circle' x='135' y='135' color='07476D,19669E,186AA6,D2EAF6' fillRatio='5,45,40,10' fillAngle='270' radius='103' fillPattern='linear' />");
	sb.append("<annotation type='circle' x='135' y='135' color='07476D,19669E,07476D' fillRatio='5,90,5' fillAngle='270' radius='100' fillPattern='linear' />");
	sb.append("</annotationGroup>");
	sb.append("<annotationGroup id='Grp2' showBelow='1'>");
	sb.append("<annotation type='circle' x='135' y='135' radius='12' color='012A46' />");
	sb.append("</annotationGroup>");
	sb.append("</annotations>");
	sb.append("<styles>");
	sb.append("<definition>");
	sb.append("<style name='TTipFont' type='font' color='FFFFFF' bgColor='012A46' borderColor='706C11' font='Verdana' size='10' />");
	sb.append("<style name='ValueFont' font='Times New Roman' italic='1' type='font' size='18' color='FFFFFF' bold='1' />");
	sb.append("</definition>");
	sb.append("<application>");
	sb.append("<apply toObject='TOOLTIP' styles='TTipFont' />");
	sb.append("<apply toObject='TICKVALUES' styles='ValueFont' />");
	sb.append("<apply toObject='LIMITVALUES' styles='ValueFont' />");
	sb.append("</application>");
	sb.append("</styles>");
	sb.append("</chart>");
	
	out.write(sb.toString());
	
%>

