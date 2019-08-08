<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="/WEB-INF/views/common/common.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>boardView</title>
</head>
<body>
<table align="center">
	<tr>
		<td>
			<table border ="1">
				<tr>
					<td width="120" align="center">
					Title
					</td>
					<td width="400">
					${board.boardTitle}
					</td>
				</tr>
				<tr>
					<td height="300" align="center">
					Comment
					</td>
					<td>
					${board.boardComment}
					</td>
				</tr>
				<tr>
					<td align="center">
					Writer 
					</td>
					<td>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td align="right">
			<a href="/board/boardList.do">List</a>
			<input type = "button" id = "modify" value = "Modify" />
		</td>
	</tr>
</table>

<Script type = "text/javascript">
	$j("#modify").click(function(){
		var form = $j("<form action = '../../boardWrite.do' method = 'post'> <input type = 'text' name = 'boardNum' value = ${boardNum} /> <input type = 'text' name = 'boardType' value = ${boardType} /> </form>");
		$j("body").append(form);
		form.submit();	
	})
</Script>	
</body>
</html>