<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<link rel="stylesheet" href="/css/admin.css" type="text/css">

<title>����â</title>

<script type="text/javascript" src="../javascript/calendar.js">
</script>

<script type="text/javascript">

function fncAddPurchase(){
	//Form ��ȿ�� ����
 	var name = document.addPurchase.receiverName.value;
	var phone = document.addPurchase.receiverPhone.value;
	var addr = document.addPurchase.divyAddr.value;
	var date = document.addPurchase.divyDate.value;

	if(name == null || name.length<1){
		alert("�̸��� �Է��� �ּ���.");
		return;
	}
	if(phone == null || phone.length<1){
		alert("����ó�� �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	if(addr == null || addr.length<1){
		alert("�ּҴ� �ݵ�� �Է��ϼž� �մϴ�.");
		return;
	}
	if(date == null || date.length<1){
		alert("��� ������� �Է��� �ּ���.");
		return;
	}		
	document.addPurchase.submit();
}
</script>
</head>

<body bgcolor="#ffffff" text="#000000">

	<form name="addPurchase" method="post" action="/purchase/addPurchase.do">

		<table width="100%" height="37" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td width="15" height="37"><img src="/images/ct_ttl_img01.gif"
					width="15" height="37"></td>
				<td background="/images/ct_ttl_img02.gif" width="100%"
					style="padding-left: 10px;">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="93%" class="ct_ttl01">��ǰ����</td>
							<td width="20%" align="right">&nbsp;</td>
						</tr>
					</table>
				</td>
				<td width="12" height="37"><img src="/images/ct_ttl_img03.gif"
					width="12" height="37" /></td>
			</tr>
		</table>

		<input type="hidden" name="prodNo" value="${pvo.prodNo}" />

		<table width="600" border="0" cellspacing="0" cellpadding="0"
			align="center" style="margin-top: 13px;">
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="300" class="ct_write">��ǰ��ȣ <img
					src="/images/ct_icon_red.gif" width="3" height="3"
					align="absmiddle" />
				</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01" width="299">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="105">${pvo.prodNo}</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">��ǰ�� <img
					src="/images/ct_icon_red.gif" width="3" height="3"
					align="absmiddle" />
				</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${pvo.prodName}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">��ǰ������ <img
					src="/images/ct_icon_red.gif" width="3" height="3"
					align="absmiddle" />
				</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${pvo.prodDetail}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">��������</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${pvo.prodDetail}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">����</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${pvo.price}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">�������</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${pvo.regDate}</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">�����ھ��̵� <img
					src="/images/ct_icon_red.gif" width="3" height="3"
					align="absmiddle" />
				</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01">${sessionScope.user.userId}</td>
				<input type="hidden" name="buyerId" value="${sessionScope.user.userId}" />
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">���Ź��</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01"><select name="paymentOption"
					class="ct_input_g" style="width: 100px; height: 19px"
					maxLength="20">
						<option value="100">���ݱ���</option>
						<option value="101">�ſ뱸��</option>
				</select></td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">�������̸�</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01"><input type="text" name="receiverName"
					class="ct_input_g" style="width: 100px; height: 19px"
					maxLength="20" value="${sessionScope.user.userName}" /></td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">�����ڿ���ó</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01"><input type="text" name="receiverPhone"
					class="ct_input_g" style="width: 100px; height: 19px"
					maxLength="20" value="${sessionScope.user.phone}" /></td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">�������ּ�</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01"><input type="text" name="divyAddr"
					class="ct_input_g" style="width: 100px; height: 19px"
					maxLength="20" value="${sessionScope.user.addr}" /></td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">���ſ�û����</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td class="ct_write01"><input type="text"
					name="divyRequest" class="ct_input_g"
					style="width: 100px; height: 19px" maxLength="20" /></td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
			<tr>
				<td width="104" class="ct_write">����������</td>
				<td bgcolor="D6D6D6" width="1"></td>
				<td width="200" class="ct_write01"><input type="text"
					readonly="readonly" name="divyDate" class="ct_input_g"
					style="width: 100px; height: 19px" maxLength="20" /> <img
					src="../images/ct_icon_date.gif" width="15" height="15"
					onclick="show_calendar('document.addPurchase.divyDate', document.addPurchase.divyDate.value)" />
				</td>
			</tr>
			<tr>
				<td height="1" colspan="3" bgcolor="D6D6D6"></td>
			</tr>
		</table>

		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			style="margin-top: 10px;">
			<tr>
				<td width="53%"></td>
				<td align="center">
					<table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="17" height="23"><img src="/images/ct_btnbg01.gif"
								width="17" height="23" /></td>
							<td background="/images/ct_btnbg02.gif" class="ct_btn01"
								style="padding-top: 3px;"><a
								href="javascript:fncAddPurchase();">����</a></td>
							<td width="14" height="23"><img src="/images/ct_btnbg03.gif"
								width="14" height="23" /></td>
							<td width="30"></td>
							<td width="17" height="23"><img src="/images/ct_btnbg01.gif"
								width="17" height="23" /></td>
							<td background="/images/ct_btnbg02.gif" class="ct_btn01"
								style="padding-top: 3px;"><a
								href="/purchase/listProduct?menu=search">���</a></td>
							<td width="14" height="23"><img src="/images/ct_btnbg03.gif"
								width="14" height="23" /></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>