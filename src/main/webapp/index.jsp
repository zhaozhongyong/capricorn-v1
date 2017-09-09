<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<s:set value="%{#request.contextPath}" var="req"></s:set>
<html>
<head>
	<script type="text/javascript">
		function load(){
		}
	</script>
</head>
<body onload="load();">
<h2>Hello World!</h2>

<br />
<br />
<s:a href="test/send_test_login1.action">send_*_*测试</s:a>
<br />
<br />
<s:a href="test/sendAction!login1.action">sendAction!login1.action测试</s:a>
<br />
<br />
<s:a href="system/send_system_login.action">登录页面</s:a>
<br />
<br />
<s:set var="ctx" value="#request.get('javax.servlet.forward.context_path')"></s:set>
<table border="1">
<tr>
<td background="${pageContext.request.contextPath}/images/pingTai/login/login_04.gif">cs</td>
</tr>
</table>
</body>
</html>
