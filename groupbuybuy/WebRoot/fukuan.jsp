<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv=content-type
			content="text/html; charset=gbk;charset=gbk" />
		<title>���� - ��Ʒ�Ź�ÿһ��|��ɳ����|��ɳ�Ź�|��ɳ����</title>
		<meta name="description" content="��Ʒ�Ź�ÿһ��|��ɳ����|��ɳ�Ź�|��ɳ����" />
		<meta name="keywords"
			content="����, ��ɳ, ��ɳ���ţ���ɳ�����ɳ�Ź�����ɳ���ۣ��Ź������ۣ���Ʒ���ѣ�����ָ�ϣ�����ָ��" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://192.168.2.19/mt/feed.php?ename=jinan"
			rel="alternate" title="���ĸ���" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script type="text/javascript">var LOGINUID= 1;</script>
		<script src="images/index000.js" type="text/javascript">
		function selectPlace(txt)
		{
			 var place = document.getElementById("tihuanduixiang");
			 var citys = document.getElementById("citys")
			 place.innerText=txt;
			 citys.innerText=txt;
			 placeLayer.style.display="none";
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
						<a href="http://192.168.2.19/mt/index.php" class="link"><img
								src="../images/logo0000.gif" /> </a>
					</div>
					<!-- <div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
								��ɳ
							</h2>
						</div>
						<div id="guides-city-change" class="change">
							�л�����
						</div>
						<div id="guides-city-list" class="city-list">
							<ul>
								<c:forEach items="${city.allLink}" var="cs">
								<li class="current">
										<div onclick="selectPlace('${cs.chinesscity}')">
											${cs.chinesscity}
										</div>
								</li>
									</c:forEach>
							</ul>
						</div>
					</div> -->
				<%-- 	<div id="header-subscribe-body" class="subscribe">
						<form action="http://192.168.2.19/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪��<lable id="citys">��ɳ</lable>������Ź���ʲô��
							</label>
							<input type="hidden" name="city_id" value="4" />
							<input id="header-subscribe-email" type="text"
								xtip="����Email������ÿ���Ź���Ϣ..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="����" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; ���Ŷ��ģ���ѣ�</a>&nbsp;
							<a class="sms" onclick=
	X.miscajax('sms', 'unsubscribe');;
>&raquo;
								ȡ���ֻ�����</a> </span>
					</div>--%>
					<ul class="nav cf">
						<li>
							<a href="index.jsp">�����Ź�</a>
						</li>
						<li>
							<a href="wqtg.jsp">�����Ź�</a>
						</li>
						<li>
							<a href="http://192.168.2.19/mt/help/tour.php">��ת����</a>
						</li>
						<li>
							<a href="http://192.168.2.19/mt/forum/index.php">������</a>
						</li>
					</ul>
					<%-- <div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.19/mt/subscribe.php">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.19/mt/account/invite.php">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">�Ż�ȯ��֤�����ѵǼ�</a>
					</div>--%>
					<div class="logins">
						<ul id="account">
							<c:choose>
								<c:when test="${username == null}">
									<li class="login">
										<a href="regedit.html">ע��</a>
									</li>
									<li class="login">
										<a href="login.html">��¼</a>
									</li>
								</c:when>
								<c:otherwise>
									<li class="logout">
										<a href="http://localhost/mt/account/logout.php">${username}</a>
									</li>
									<li class="account">
										<a href="http://localhost/mt/order/index.php" id="myaccount"
											class="account">�ҵ�����</a>
									</li>
									<li class="login">
										<a href="regedit.html">�˳�</a>
									</li>
								</c:otherwise>
							</c:choose>
						</ul>
						<div class="line islogin"></div>
					</div>
					<ul id="myaccount-menu">
						<li>
							<a href="http://192.168.2.19/mt/order/index.php">�ҵĶ���</a>
						</li>
						<li>
							<a href="http://192.168.2.19/mt/coupon/index.php">�ҵ��Ż�ȯ</a>
						</li>
						<li>
							<a href="http://192.168.2.19/mt/account/settings.php">�ʻ�����</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="order-pay">
						<div id="content">
							<div id="deal-buy" class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											Ӧ���ܶ
											<strong class="total-money">7.9</strong> Ԫ
										</h2>
									</div>
									<div class="sect">
										<div style="text-align: left;">
											<form id="order-pay-form" method="post"
												action="https://www.alipay.com/cooperate/gateway.do?_input_charset=gbk"
												target="_blank" sid="1">
												<input type="hidden" name="body"
													value="http://192.168.2.19/mt/team.php?id=4" />
												<input type="hidden" name="notify_url"
													value="http://192.168.2.19/mt/order/alipay/notify.php" />
												<input type="hidden" name="out_trade_no" value="go-1-1-2939" />
												<input type="hidden" name="partner" value="" />
												<input type="hidden" name="payment_type" value="1" />
												<input type="hidden" name="return_url"
													value="http://192.168.2.19/mt/order/alipay/return.php" />
												<input type="hidden" name="seller_email" value="" />
												<input type="hidden" name="service"
													value="create_direct_pay_by_user" />
												<input type="hidden" name="show_url"
													value="http://192.168.2.19/mt/team.php?id=4" />
												<input type="hidden" name="subject"
													value="����7.9Ԫ��ԭ��18Ԫ����ɯ��о˿���ȶ��������1������ɫ/��ɫ/ī��ɫ/����ɫ/ǳ��ɫ/���ɫ/����ɫ��7ɫ��ѡ����͸�����������ʣ���Ь��˫�ŴӴ�Ĭ����������죬��ɯ����һͬӭ��������" />
												<input type="hidden" name="total_fee" value="7.9" />
												<input type="hidden" name="sign_type" value="MD5" />
												<input type="hidden" name="sign"
													value="da379dc32e9ec241f4214d8a1525efaa" />
												<img src="../images/alipay00.png" />
												<br />
												<input type="submit" class="formbutton gotopay"
													value="ǰ��֧����֧��" />
													
													
											</form>
											<div class="back-to-check">
												<a href="http://192.168.2.19/mt/order/check.php?id=1">&raquo;
													����ѡ������֧����ʽ</a>
											</div>
										</div>
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- bd end -->
			</div>
			<!-- bdw end -->

	<%--<div id="ftw">
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
		</div> --%>
		</div>
	</body>
</html>
