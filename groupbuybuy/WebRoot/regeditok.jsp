<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		
		<meta http-equiv=content-type content="text/html; charset=gbk" />
		<title>���� - ��Ʒ�Ź�ÿһ��|��ɳ����|��ɳ�Ź�|��ɳ����</title>
		<meta name="description" content="��Ʒ�Ź�ÿһ��|��ɳ����|��ɳ�Ź�|��ɳ����" />
		<meta name="keywords"
			content="����, ��ɳ, ��ɳ���ţ���ɳ�����ɳ�Ź�����ɳ���ۣ��Ź������ۣ���Ʒ���ѣ�����ָ�ϣ�����ָ��" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://192.168.2.49/mt/feed.php?ename=jinan"
			rel="alternate" title="���ĸ���" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script type="text/javascript">var LOGINUID= 0;</script>
		<script src="images/index000.js" type="text/javascript"></script>
		
	</head>

	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">

			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="" class="link"><img
								src="images/logo0000.JPG" />
						</a>
					</div>
					<div class="guides">
						
					</div>
					<%-- <div id="header-subscribe-body" class="subscribe">
						<form action="http://192.168.2.49/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪��<lable id="citys"></lable>������Ź���ʲô��
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
					</div>--%>
					<ul class="nav cf">
						<li>
							<a href="index.jsp">�����Ź�</a>
						</li>
						<li>
							<a href="produceservlet?action=listformer&city=tianjin">�����Ź�</a>
						</li>
						<li>
							<a href="wzmt.jsp?city=tianjin">��ת�Ź�</a>
						</li>
						<li>
							<a href="talkwithservlet?action=list">������</a>
						</li>
					</ul>
					<%-- <div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.49/mt/subscribe.php">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.49/mt/account/invite.php">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
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
						<div class="line "></div>
					</div>
				</div>
			</div>

		<%String name=(String)request.getAttribute("username"); %>
			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="signuped">
						<div id="content">
							<div class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head success">
										<h2>
											<%=name %>:��ϲ��ע��ɹ���
										</h2>
									</div>
									<div class="sect">
										<h3 class="notice-title">
											��һ����
											<a href="login.jsp">�������</a>��½����!
										</h3>
										<div class="help-tip">
											<h3 class="help-title">
												�������š�
											</h3>
											<ul class="help-list">
												<li>
													�и����ʵ�ݵ�����Ŷ��
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>
						<div id="sidebar">
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