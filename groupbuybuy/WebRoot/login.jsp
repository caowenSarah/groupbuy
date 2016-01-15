<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
		<meta http-equiv=content-type content="text/html; charset=gbk" />
		<title>沃团 - 精品团购每一天</title>
		
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://192.168.2.49/mt/feed.php?ename=jinan"
			rel="alternate" title="订阅更新" type="application/rss+xml" />
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
					alert("请输入用户名!")
					usernameObj.focus();
					return false;
				}
				var passwordObj = document.getElementById("password");
				if (passwordObj.value == "") {
					alert("请输入密码!")
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
								想知道明天的团购是什么吗？
							</label>
							<input type="hidden" name="city_id" value="" />
							<input id="header-subscribe-email" type="text"
								xtip="输入Email，订阅每日团购信息..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="订阅" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; 短信订阅，免费！</a>&nbsp;<a
							class="sms" onclick=X.miscajax('sms', 'unsubscribe');>&raquo;取消手机订阅</a>
						</span>
					</div>--%>
					<ul class="nav cf">
						<li>
							<a href="produceservlet?action=selectcity&city=${city}">今日团购</a>
						</li>
						<%-- <li>
							<a href="produceservlet?action=listformer&city=${city}">往期团购</a>
						</li>--%>
						<li>
							<a href="wzmtservlet?action=list&city=${city}">玩转沃团</a>
						</li>
						
					</ul>
					<%-- <div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.65/mt/subscribe.php">邮件订阅</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.65/mt/account/invite.php">邀请好友</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">优惠券验证及消费登记</a>
					</div>--%>
					<div class="logins">
						<ul id="account">
							<li class="login">
								<a href="login.jsp">登录</a>
							</li>
							<li class="signup">
								<a href="regedit.jsp">注册</a>
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
											登录
										</h2>
										<span>&nbsp;或者 <a href="regedit.html">注册</a> </span>
									</div>
									<div class="sect">
										<form id="login-user-form" method="post" 
											action="userservlet?action=queryuser" class="validator"
											onSubmit="return checkform()">
											<div class="field email">
												<label for="login-email-address">
													用户名
												</label>
												<input type="text" size="30" name="username"
													id="login-email-address" class="f-input" value=""
													require="true" datatype="require|limit" min="2" />
											</div>
											<div class="field password">
												<label for="login-password">
													密码
												</label>
												<input type="password" size="30" name="password"
													id="login-password" class="f-input" require="true"
													datatype="require" />
											</div>
											
											<div class="act">
												<input type="submit" value="登录" name="commit"
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
											还没有沃团账户？
										</h2>
										<p>
											立即
											<a href="regedit.html">注册</a>，仅需30秒！
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
							用户帮助
						</h3>
						<ul class="sub-list">
							<li>
								<a href="wzmt.jsp">玩转沃团</a>
							</li>
							<li>
								<a href="wzmt.jsp">常见问题</a>
							</li>
							<li>
								<a href="wzmt.jsp">什么是沃团</a>
							</li>

						</ul>
					</li>
					<li class="col">
						<h3>
							获取更新
						</h3>
						<ul class="sub-list">
							<li>
								<a href="">邮件订阅</a>
							</li>
							<li>
								<a href="">RSS订阅</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							合作与联系
						</h3>
						<ul class="sub-list">
							<li>
								<a href="aboutus.jsp">商务合作</a>
							</li>
							<li>
								<a href="givegroupinfor.jsp">提供团购信息</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							公司信息
						</h3>
						<ul class="sub-list">
							<li>
								<a href="aboutus.jsp">关于沃团</a>
							</li>
							<li>
								<a href="copyrightstatement.jsp">版权声明</a>
							</li>

							<li>
								<a href="privacystatement.jsp">隐私声明</a>
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
						<span>2010</span>&nbsp;沃团(now6.cn)版权所有&nbsp; 使用沃团前必读&nbsp;
						&nbsp;Powered by xiaomituan.com
						</a>
					</p>
				</div>
			</div>
		</div>--%>
		</div>
	</body>
</html>



