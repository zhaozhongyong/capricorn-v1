<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="bu" uri="http://www.4bu4.com"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="oscache" uri="http://www.opensymphony.com/oscache" %>

<% 
	request.setAttribute("decorator", "none");
	response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
	response.setHeader("Pragma","no-cache"); //HTTP 1.0
	response.setDateHeader ("Expires", 0); //prevents caching at the proxy server 
%>

<link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon" />

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/pingTai/pingTai.css">

<script src="${pageContext.request.contextPath}/jsFile/utils.js" type="text/javascript" ></script>

<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/jsFile/kindEditor/kindeditor-min.js"></script>
<script src="${pageContext.request.contextPath}/jsFile/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/jsFile/dwr/engine.js" type="text/javascript"></script> 

<script type="text/javascript">
	var highlightcolor = '#d5f4fe';
	var clickcolor='#51b2f6';//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(

	function changeto(){
		source = event.srcElement;
		if(source.tagName=="TR"||source.tagName=="TABLE"){
			return false;
		}
		while(source.tagName != "TD"){
			source = source.parentElement;
		}
		source = source.parentElement;
		cs = source.children;
		//alert(cs.length);
		if(cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor){
			for(var i=0; i<cs.length; i++){
				cs[i].style.backgroundColor=highlightcolor;
			}
		}
	}

	function changeback(){
		source = event.srcElement;
		if(event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc"){
			return false;
		}
		if(event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor){
			//source.style.backgroundColor=originalcolor
			for(var i=0; i<cs.length; i++){
				cs[i].style.backgroundColor="";
			}
		}
	}

	function clickto(){
		source = event.srcElement;
		if(source.tagName=="TR"||source.tagName=="TABLE"){
			return;
		}
		while(source.tagName!="TD"){
			source = source.parentElement;
		}
		source = source.parentElement;
		cs = source.children;
		//alert(cs.length);
		if(cs[1].style.backgroundColor!=clickcolor&&source.id!="nc"){
			for(var i=0; i<cs.length; i++){
				cs[i].style.backgroundColor=clickcolor;
			}
		}else{
			for(var i=0; i<cs.length; i++){
				cs[i].style.backgroundColor="";
			}
		}
	}

	//分页跳转
	function toPage(url){
		var toPageValue = document.getElementById("toPage").value;
		var urlParamater = document.getElementById("urlParamater").value;
		if(toPageValue!=""){
			window.name="__self";   
			window.open(url + "?queryResult.currentPage=" + toPageValue + urlParamater, "__self");  
		}
	}
	
	//分页字段排序
	function orderbyFun(url, td){
		//alert(url + "--?_orderby=--" + td.getAttribute("orderby"));//td.orderby	.getAttribute("")
		window.location.href = encodeURI(url + "?_orderby=" + td.getAttribute("orderby"));
	}

	//排序图标
	function initOrder(){
		var ascImg = "<img src='${pageContext.request.contextPath}/images/pingTai/order_asc.gif'/>";
		var descImg = "<img src='${pageContext.request.contextPath}/images/pingTai/order_desc.gif'/>";
		var orderTr = document.getElementById("orderTr");
		var cells = orderTr.cells;
		for(var i=0; i<cells.length; i++){
			var cell = cells[i];
			if(cell.getAttribute("orderby") != undefined && cell.getAttribute("orderval") != undefined){
				var orderval = cell.getAttribute("orderval");
				if(orderval == "asc"){
					cell.innerHTML += ascImg;
				}else if(orderval == "desc"){
					cell.innerHTML += descImg;
				}
			}
		}
	}
	
</script>
