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
					
				<%-- 	<div id="header-subscribe-body" class="subscribe">
						<form action="http://192.168.2.65/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪��������Ź���ʲô��
							</label>
							<input type="hidden" name="city_id" value="" />
							<input id="header-subscribe-email" type="text"
								xtip="����Email������ÿ���Ź���Ϣ..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="����" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; ���Ŷ��ģ���ѣ�</a>&nbsp;<a
							class="sms" onclick=X.miscajax('sms', 'unsubscribe');>&raquo;ȡ���ֻ�����</a>
						</span>
					</div>--%>
					<ul class="nav cf">
						<li>
							<a href="produceservlet?action=selectcity&city=${city}">�����Ź�</a>
						</li>
						<%-- <li>
							<a href="produceservlet?action=listformer&city=${city}">�����Ź�</a>
						</li>--%>
						<li>
							<a href="wzmtservlet?action=list&city=${city}">��ת����</a>
						</li>
						
					</ul>
					<%-- <div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.65/mt/subscribe.php">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.65/mt/account/invite.php">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">�Ż�ȯ��֤�����ѵǼ�</a>
					</div>--%>
					<div class="logins">
						<ul id="account">
							<li class="login">
								<a href="login.jsp">��¼</a>
							</li>
							<li class="signup">
								<a href="regedit.jsp">ע��</a>
							</li>
						</ul>
						<div class="line"></div>
					</div>
				</div>
			</div>

			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="login">
						<div id="content" class="login-box">
							<div class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											��¼
										</h2>
										<span>&nbsp;���� <a href="regedit.html">ע��</a> </span>
									</div>
									<div class="sect">
										<form id="login-user-form" method="post" 
											action="userservlet?action=queryuser" class="validator"
											onSubmit="return checkform()">
											<div class="field email">
												<label for="login-email-address">
													�û���
												</label>
												<input type="text" size="30" name="username"
													id="login-email-address" class="f-input" value=""
													require="true" datatype="require|limit" min="2" />
											</div>
											<div class="field password">
												<label for="login-password">
													����
												</label>
												<input type="password" size="30" name="password"
													id="login-password" class="f-input" require="true"
													datatype="require" />
											</div>
											
											<div class="act">
												<input type="submit" value="��¼" name="commit"
													id="login-submit" class="formbutton" />
											</div>
										</form>
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>
						<div id="sidebar">
							<div class="sbox">
								<div class="sbox-top"></div>
								<div class="sbox-content">
									<div class="side-tip">
										<h2>
											��û�������˻���
										</h2>
										<p>
											����
											<a href="regedit.html">ע��</a>������30�룡
										</p>
									</div>
								</div>
								<div class="sbox-bottom"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- bd end -->
			</div>
			<!-- bdw end -->

	<%-- <div id="ftw">
			<div id="ft">
				<p class="contact">

				</p>
				<ul class="cf">
					<li class="col">
						<h3>
							�û�����
						</h3>
						<ul class="sub-list">
							<li>
								<a href="wzmt.jsp">��ת����</a>
							</li>
							<li>
								<a href="wzmt.jsp">��������</a>
							</li>
							<li>
								<a href="wzmt.jsp">ʲô������</a>
							</li>

						</ul>
					</li>
					<li class="col">
						<h3>
							��ȡ����
						</h3>
						<ul class="sub-list">
							<li>
								<a href="">�ʼ�����</a>
							</li>
							<li>
								<a href="">RSS����</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							��������ϵ
						</h3>
						<ul class="sub-list">
							<li>
								<a href="aboutus.jsp">�������</a>
							</li>
							<li>
								<a href="givegroupinfor.jsp">�ṩ�Ź���Ϣ</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							��˾��Ϣ
						</h3>
						<ul class="sub-list">
							<li>
								<a href="aboutus.jsp">��������</a>
							</li>
							<li>
								<a href="copyrightstatement.jsp">��Ȩ����</a>
							</li>

							<li>
								<a href="privacystatement.jsp">��˽����</a>
							</li>
						</ul>
					</li>
					<li class="col end">
						<div class="logo-footer">
							<a href="http://localhost/mt/"><img src="images/logo-foo.jpg" />
							</a>
						</div>
					</li>
				</ul>
				<div class="copyright">
					<p>
						&copy;
						<span>2010</span>&nbsp;����(now6.cn)��Ȩ����&nbsp; ʹ������ǰ�ض�&nbsp;
						&nbsp;Powered by xiaomituan.com
						</a>
					</p>
				</div>
			</div>
		</div>--%>
		</div>
	</body>
</html>



