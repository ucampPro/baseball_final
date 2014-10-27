<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<c:if test="${empty sessionScope.user }">
	<a href="index.jsp?action=member/login.jsp"> 
    <IMG src="image/login.gif" border="0" style="cursor:pointer" id="loginBtn">
    </a><br><br>
	<a href="index.jsp?action=member/customerJoin.jsp"> <IMG src="image/join.gif" border="0" style="cursor:pointer" id="goJoinBtn"></a>
	<A href="index.jsp"><IMG src="image/grb.JPG" border="0"><br></A>
	<IMG src="image/qwe.JPG" border="0">
</c:if>

<c:if test="${not empty sessionScope.user && sessionScope.user != 'admin' }">
	<a href="controller?action=logout">
	<IMG src="image/logout.gif" border="0" style="cursor:pointer" id="logoutBtn"></a><br><br>
	<h4>�Ϲ�ȸ��</h4>
	<h4>����� : ${sessionScope.user}</h4>
	<a href="controller?action=detailCustomer">�󼼺���</a><br>
	<a href="controller?action=updateCustomer">�����ϱ�</a><br>
	<a href="index.jsp?action=member/customerDelete.jsp">Ż���ϱ�</a><br>
	<a href="sController?action=selectAllList">��ü��������Ʈ</a><br>
	<a href="Recordcontroller?action=rank">���� ����</a><br>
	=========================<br>
	<form name="month" action="sController?action=selectMonth" method="post">
	<input type="month" name="monthInfo">
	<input type="submit" value="�˻�"><br>
	</form>
	=========================<br>
	<form name="day" action="sController?action=selectDay" method="post">
	<input type="date" name="dayInfo">
	<input type="submit" value="�˻�"><br>
	</form>
	<A href="index.jsp"><IMG src="image/grb.JPG" border="0"><br></A>
</c:if>

<c:if test="${not empty sessionScope.user && sessionScope.user == 'admin' }">
	<a href="controller?action=logout"><IMG src="image/logout.gif" border="0" style="cursor:pointer" id="logoutBtn"></a><br><br>
	<h4>������</h4>
	<a href="sController?action=selectAll">��ü��������Ʈ</a><br>
	<a href="sController?action=inputForm">�������</a><br>
	<A href="index.jsp"><IMG src="image/grb.JPG" border="0"><br></A>
</c:if>
</center>
</body>
</html>
