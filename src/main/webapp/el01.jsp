<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el 표현식</h1>
	<p><%=1+2+3+4+5 %></p>
	<p>${1+2+3+4+5 }</p>
	<table>
		<tr>
			<th>자료형</th>
			<th>표현식</th>
			<th>EL</th>
			<th></th>
		</tr>
		<tr>
			<td>숫자(10진수 정수)</td>
			<td><%=-1234%></td>
			<td>${-1234}</td>
			<td></td>
		</tr>
		<tr>
			<td>숫자(실수)</td>
			<td><%=3.14 %></td>
			<td>${3.14}</td>
			<td></td>
		</tr>
		<tr>
			<td>문자</td>
			<td><%='A' %></td>
			<td>${'' }</td>
			<td>문자지원 안함!</td>
		</tr>
		<tr>
			<td>문자열</td>
			<td><%="ABC" %></td>
			<td>${'ABC' }</td>
			<td>'' "" 둘다 문자열 처리</td>
		</tr>
		<tr>
			<td>문자열</td>
			<td><%="ABC" %></td>
			<td>${"ABC" }</td>
			<td>'' "" 둘다 문자열 처리</td>
		</tr>
		
		
		<tr>
			<td>boolean</td>
			<td><%=true %></td>
			<td>${true }</td>
			<td></td>
		</tr>
		<tr>
			<td>Object</td>
			<td><%=new java.util.Date()%></td>
			<td>${'' }</td>
			<td>전달 받아야 사용 가능</td>
		</tr>
		<tr>
			<td>Null Object</td>
			<td><%
			Object a = null;
			out.print(a);
			%></td>
			<td>${null }</td>
			<td>null 이면 페이지 소스에 출력안됨</td>
		</tr>
		
		<tr>
			<td>연산(곱하기)</td>
			<td><%=2*3 %></td>
			<td>${2*3 }</td>
			<td></td>
		</tr>
		<tr>
			<td>연산(나누기)</td>
			<td><%=8/3 %></td>
			<td>${8/3 }</td>
			<td>el은 자동 형변환이 되지 않는다.</td>
		</tr>
		<tr>
			<td>연산(나머지)</td>
			<td><%=8%3 %></td>
			<td>${8%3 }</td>
			<td>8/3의 나머지는 2</td>
		</tr>
		<tr>
			<td>비교(true)</td>
			<td><%=5>2 %></td>
			<td>${5>2 }</td>
			<td>5>2 : true</td>
		</tr>
		<tr>
			<td>비교(false)</td>
			<td><%=5<2 %></td>
			<td>${5<2 }</td>
			<td>5<2 : false</td>
		</tr>
	</table>
</body>
</html>