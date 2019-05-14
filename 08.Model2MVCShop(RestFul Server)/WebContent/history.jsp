<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html; charset=EUC-KR" %>

<html>
<head>

<title>열어본 상품 보기</title>

</head>
<body>
	열어본 상품 목록
<br>
<br>
<%
	request.setCharacterEncoding("euc-kr");
	response.setCharacterEncoding("euc-kr");
	String history = null;
	Cookie[] cookies = request.getCookies();
	System.out.println("if문 진입 전");
	if (cookies!=null && cookies.length > 0) {
		System.out.println("if문 내부 실행처음(history값 확인) : "+cookies.toString());
		for (int i = 0; i < cookies.length; i++) {
			Cookie cookie = cookies[i];
			if (cookie.getName().equals("history")) {
				history = cookie.getValue();
				System.out.println("if문 내부 실행1(history값 확인) : "+history);
			}
		}
		System.out.println("if문 내부 실행2(history값 확인) : "+history);
		if (history != null) {
			String[] h = history.split(",");
			System.out.println("if문 내부 실행3(history값 확인) : "+h);
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
	System.out.println("if문 끝(history값 확인) : "+history);
%>

</body>
</html>