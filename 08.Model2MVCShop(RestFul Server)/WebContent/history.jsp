<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html; charset=EUC-KR" %>

<html>
<head>

<title>��� ��ǰ ����</title>

</head>
<body>
	��� ��ǰ ���
<br>
<br>
<%
	request.setCharacterEncoding("euc-kr");
	response.setCharacterEncoding("euc-kr");
	String history = null;
	Cookie[] cookies = request.getCookies();
	System.out.println("if�� ���� ��");
	if (cookies!=null && cookies.length > 0) {
		System.out.println("if�� ���� ����ó��(history�� Ȯ��) : "+cookies.toString());
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookie = cookies[i];
			if (cookie.getName().equals("history")) {
				history = cookie.getValue();
				System.out.println("if�� ���� ����1(history�� Ȯ��) : "+history);
			}
		}
		System.out.println("if�� ���� ����2(history�� Ȯ��) : "+history);
		if (history != null) {
			String[] h = history.split(",");
			System.out.println("if�� ���� ����3(history�� Ȯ��) : "+h);
			for (int i = 0; i < h.length; i++) {
				if (!h[i].equals("null")) {
%>
<a href="/product/getProduct?prodNo=<%=h[i]%>&menu=search"
	target="rightFrame"><%=h[i]%></a>
<br>
<%
				}
			}
		}
	}
	System.out.println("if�� ��(history�� Ȯ��) : "+history);
%>

</body>
</html>