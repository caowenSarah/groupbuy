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
var WEB_ROOT = '/mt';</script>
		<script type="text/javascript">
var LOGINUID = 0;</script>
		<script src="images/index000.js" type="text/javascript">
</script>
		<script type="text/javascript">
function checkName(obj) {
	$.get("../panduan.do", {
		username : obj.value
	}, function(shuju) {
		$("#nameInfo").text(shuju);
	});
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
					<div class="guides">
						
					</div>
					<!--  <div id="header-subscribe-body" class="subscribe">
						<form action="" method="post" id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪��������Ź���ʲô��
							</label>
							<input type="hidden" name="city_id" value="4" />
							<input id="header-subscribe-email" type="text"
								xtip="����Email������ÿ���Ź���Ϣ..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="����" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; ���Ŷ��ģ���ѣ�</a>&nbsp;
							<a class="sms" onclick="X.miscajax('sms','unsubscribe');">&raquo;
								ȡ���ֻ�����</a>
						</span>
					</div>-->
					<ul class="nav cf">
						<li>
							<a href="produceservlet?action=selectcity&city=${city}">�����Ź�</a>
						</li>
						<!--  <li>
							<a href="produceservlet?action=listformer&city=${city}">�����Ź�</a>
						</li>-->
						<li>
							<a href="wzmtservlet?action=list&city=${city}">��ת����</a>
						</li>
						
					</ul>
					<!-- <div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.49/mt/subscribe.php">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.49/mt/account/invite.php">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">�Ż�ȯ��֤�����ѵǼ�</a>
					</div> -->
					<div class="logins">
						<ul id="account">
							<li class="login">
								<a href="login.jsp">��¼</a>
							</li>
							<li class="signup">
								<a href="regedit.jsp">ע��</a>
							</li>
						</ul>
						<div class="line "></div>
					</div>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="signup">
						<div id="content" class="signup-box">
							<div class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2 href="regedit.jsp">
											ע��
										</h2>
										<span>&nbsp;���� <a href="login.jsp">��¼</a>
										</span>
									</div>
									<div class="sect">
										<form id="signup-user-form" method="post"
											action="userservlet?action=insert" class="validator">
											<div>
												<label>
													<span class="color:red">${msg }</span>
												</label>
											</div>
											<div class="field email">
												<label for="signup-email-address">
													Email
												</label>
												<input type="text" size="30" name="useremail"
													id="signup-email-address" class="f-input" value=""
													require="true" datatype="email|ajax"
													url="" vname="signupemail"
													msg="Email��ʽ����ȷ|Email�Ѿ���ע��" />
												<span class="hint">���ڵ�¼���һ����룬���ṫ�����������д</span>
											</div>
											<div class="field username">
												<label for="signup-username">
													�û���
												</label>
												<input type="text" size="30" name="username"
													id="signup-username" class="f-input" value=""
													onblur="checkName(this)"  min="2" max="16" maxLength="16"
													url="/mt/ajax/validator.php" vname="signupname" msg="|" />
												&nbsp;&nbsp;&nbsp;
												<span style="color: red;" id="nameInfo"></span>
												<span class="hint"></span>
											</div>
											<div class="field password">
												<label for="signup-password">
													����
												</label>
												<input type="password" size="30" name="password"
													id="signup-password" class="f-input" require="true"
													datatype="require" />
												<span class="hint">Ϊ�������ʺŰ�ȫ������������������Ϊ6���ַ�����</span>
											</div>
											<div class="field password">
												<label for="signup-password-confirm">
													ȷ������
												</label>
												<input type="password" size="30" name="password2"
													id="signup-password-confirm" class="f-input" require="true"
													datatype="compare" compare="signup-password" />
											</div>
											<div class="field">
												<label for="signup-password-confirm">
													�ֻ�����
												</label>
												<input type="text" size="30" name="mobile"
													id="signup-mobile" class="number" require="true"
													datatype="mobile" />
												<span class="inputtip">�ֻ�������������ϵ��������Ҫ��ʽ</span>
											</div>
										<!--  	<div class="field city">
												<label id="enter-address-city-label" for="signup-city">
													���ڳ���
												</label>
												<select name="city_id" class="f-city">
													<option value='changsha' selected>
														����
													</option>
													<option value='zhuzhou'>
														������
													</option>
													<option value='otherplace'>
														�Ϻ�
													</option>
												</select>
											</div>-->

											<div class="act">
												<input type="submit" value="ע��" name="commit"
													id="signup-submit" class="formbutton" />
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
											���������˻���
										</h2>
										<p>
											��ֱ��
											<a href="login.jsp">��¼</a>��
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

			<!-- <div id="ftw">
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
		</div> -->
		</div>
	</body>
</html>
