<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Footer</title>
<link href="./css/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<script>
		function changeView(value){
			if(value=="0")
				location.href="index.jsp?contentPage=terms_of_use.jsp";
			else if(value=="1")
				location.href="https://www.instagram.com/dongduk_w_univ";
			else if(value=="2")
				location.href="index.jsp?contentPage=road.jsp";
			else if(value=="3")
				location.href="index.jsp?contentPage=index_notice.jsp";	
		}
	</script>
	
	<footer class="foot">
		<div align="center" class="text-box">
			<span class="footer-aTag" onclick="changeView(0)" style="cursor: pointer">이용약관</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="footer-aTag" onclick="changeView(1)" style="cursor: pointer">커뮤니티</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="footer-aTag" onclick="changeView(2)" style="cursor: pointer">찾아오시는길</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="footer-aTag" onclick="changeView(3)" style="cursor: pointer">공지사항</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<div class="copyright">
              <span>Copyright ⓒ 2022 DongDuk.Computer_Science.</span>
              <span>All Rights Reserved.</span>
        </div>
	</footer>
</body>
</html>