<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값의 전달 </h1>
	<%
	
	
	//scope
	//page > request > session > application
	
	//java.util.Date msg1 = new java.util.Date();
	String[] arr1 ={"item1", "item2", "item3"};
	java.util.List<String> arr2 = new java.util.ArrayList<String>();
	arr2.add("list1");
	arr2.add("list2");
	arr2.add("list3");
	
	java.util.Set<String> arr3 = new java.util.HashSet<String>();
	arr3.add("set1");
	arr3.add("set2");
	arr3.add("set3");
	
	java.util.Map<String,String> map = new java.util.HashMap<String, String>();
	map.put("key1", "val1");
	map.put("key2", "val2");
	map.put("key3", "val3");
	
	com.bit.frame.controller.DeptVo  bean = new  com.bit.frame.controller.DeptVo();
	bean.setDempno(10);
	bean.setDname("test10");
	bean.setSal(10);	
	
	pageContext.setAttribute("bean", bean);
	pageContext.setAttribute("map", map);
	
	pageContext.setAttribute("msg2", arr2);
	request.setAttribute("msg2", arr2);
	session.setAttribute("msg2", arr2);
	application.setAttribute("msg2", arr1);
	%>
	
	//el은 객체가 들어오면 null 로 생각해서 처리하지 않는다.
	//문자열로 묶어서 처리해 주어야 한다. 
	<p>msg1 = <%=arr1 %></p>
	<p>msg1 = ${arr1 }</p>
	<p>pageContext = <%=pageContext.getAttribute("msg2") %></p>
	<p>pageContext = ${pageScope.msg2 }</p>
	<p>pageContext = ${pageScope.msg2[0] }</p>
	<p>pageContext = ${pageScope.msg2[1] }</p>
	<p>pageContext = ${pageScope.msg2[2] }</p>
	<p>request = <%=request.getAttribute("msg2") %></p>
	<p>request = ${requestScope.msg2 }</p>
	<p>session = <%=session.getAttribute("msg2") %></p>
	<p>session = ${sessionScope.msg2 }</p>
	<p>session = ${sessionScope.msg2[0] }</p>
	<p>session = ${sessionScope.msg2[1] }</p>
	<p>session = ${sessionScope.msg2[2] }</p>
	<p>application = <%=application.getAttribute("msg2") %></p>
	<p>application = ${applicationScope.msg2 }</p>
	<p>application = ${applicationScope.msg2[0] }</p>
	<p>application = ${applicationScope.msg2[1] }</p>
	<p>application = ${applicationScope.msg2[2] }</p>
	<p>application = ${applicationScope.msg2[3] }</p>	<!-- 문법적으로 에러지만 에러가 아닌 그냥 화면에 출력되지 않는다.. -->
	<p>map = ${map}</p>
	<p>map = ${map.get("key1")}</p>
	<p>map = ${map.get("key2")}</p>
	<p>map = ${map.get("key3")}</p>
	<p>map = ${map}</p>
	<p>map = ${map.key1}</p>
	<p>map = ${map.key2}</p>
	<p>map = ${map.key3}</p>
	<p>bean = ${bean}</p>		<!-- 인자 접근이 private 로 막혀있지만, el이 기본적으로 getter에 접근한다. -->
	<p>bean = ${bean.dempno}</p>
	<p>bean = ${bean.dname}</p>
	<p>bean = ${bean.sal}</p>
	
</body>
</html>