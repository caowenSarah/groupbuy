<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
		<meta http-equiv=content-type content="text/html; charset=gbk" />
		<title>���� - ��Ʒ�Ź�ÿһ��</title>
		
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://192.168.2.49/mt/feed.php?ename=jinan"
			rel="alternate" title="���ĸ���" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
		<script type="text/javascript">
			var WEB_ROOT = '/mt';
		</script>
		<script type="text/javascript">
			var LOGINUID = 0;
		</script>
		<script src="images/index000.js" type="text/javascript"></script>
		<script type="text/javascript">
			function checkform() {
				var usernameObj = document.getElementById("username");
				if (usernameObj.value == "") {
					alert("�������û���!")
					usernameObj.focus();
					return false;
				}
				var passwordObj = document.getElementById("password");
				if (passwordObj.value == "") {
					alert("����������!")
					passwordObj.focus();
					return false;
				}
			
				return true;
			}
		</script>
		<%session.invalidate(); %>
		<script language="javaScript">
			window.opener = null;
			window.close();
		</script>
	</head>
	<body class="newbie">
	
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">

			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="" class="link"><img
								src="images/logo0000.JPG" /> </a>
					</div>
					<div class="logins">
						<ul id="account">
							<li class="login">
								<a href="login.jsp">��¼</a>
							</li>
							<li class="signup">
								<a href="regedit.html">ע��</a>
							</li>
						</ul>
						<div class="line"></div>
					</div>
				</div>
			</div>

			<!-- bdw end -->

			<%-- 	<div class="copyright">
					<p>
						&copy;
						<span>2010</span>&nbsp;����(now6.cn)��Ȩ����&nbsp; ʹ������ǰ�ض�&nbsp;
						&nbsp;Powered by xiaomituan.com
						</a>
					</p>
				</div>--%>
			</div>
		
		</div>
	</body>
</html>



