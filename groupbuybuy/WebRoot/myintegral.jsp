<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="org.cw.group.dao.*,org.cw.group.bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>

		<meta http-equiv=content-type content="text/html; charset=gbk" />
		<title>���� - ��Ʒ�Ź�ÿһ�� |${city}����|${city}�Ź�|${city}����</title>
		<meta name="description"
			content="��Ʒ�Ź�ÿһ��|${city}����|${city}�Ź�|${city}����" />
		<meta name="keywords"
			content="����, ${city}, ${city}���ţ�${city}���${city}�Ź���${city}���ۣ��Ź������ۣ���Ʒ���ѣ�����ָ�ϣ�����ָ��" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
			title="���ĸ���" type="application/rss+xml" />
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
function selectPlace(txt) {
	var place = document.getElementById("tihuanduixiang");
	var citys = document.getElementById("citys")
	var citylist = document.getElementById("citylist")
	place.innerText = txt;
	citys.innerText = txt;
	citylist.innerText = txt;
	placeLayer.style.display = "none";
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
						<a href="" class="link">2<img src="images/logo0000.JPG" /> </a>
					</div>
				<!--  	<div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
								<%String city=request.getParameter("city");
							if(city.equals("tianjin")) {%>
								������
							<%}else if(city.equals("beijing")){%>
								����
							<%}else{%>
								������
							<%} %>

							</h2>
						</div>

						<a href="selectcity.jsp">�л�����</a>


					</div>-->
					<%-- <div id="header-subscribe-body" class="subscribe">
						<form action="http://localhost/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪��
								<lable id="citys">${city}</lable>
								������Ź���ʲô��
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
								ȡ���ֻ�����</a> </span>
					</div>--%>
					<ul class="nav cf">
						<%
							String userName = (String) session.getAttribute("userName");
						%>
						<li>
							<a href="produceservlet?action=selectcity&city=<%=city %>">�����Ź�</a>
						</li>
						<%-- <li>
							<a href="produceservlet?action=listformer&city=<%=city %>">�����Ź�</a>
						</li>--%>
						<li>
							<a href="wzmtservlet?action=list&city=<%=city %>">��ת����</a>
						</li>
						<c:choose>
							<c:when test="${userName!=null}">
								<a href="talkwithservlet?action=list&city=<%=city %>">������</a>
							</c:when>
							<c:otherwise>
								<a href="login.jsp">������</a>
							</c:otherwise>
						</c:choose>
					</ul>
					<%-- <div class="refer">
						&raquo;&nbsp;
						<a href="">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="">�Ż�ȯ��֤�����ѵǼ�</a>
					</div>--%>

					<div class="logins">
						<ul id="account">
							<%
								if (userName == null) {
							%>
							<li class="login">
								<a href="regedit.html">ע��</a>
							</li>
							<li class="login">
								<a href="login.jsp">��¼</a>
							</li>
							<%
								} else {
							%>
							<li class="logout">
								<a href=""><%=userName%></a>
							</li>

							<li class="account">
								<a
									href="orderitemservlet?action=queryByUser&username=<%=userName%>"
									id="myaccount" class="account">�ҵ��Ź�</a>
							</li>

							<li class="login">
								<a href="login.jsp">�˳�</a>
							</li>
							<%
								}
							%>
						</ul>
						<div class="line ">
						</div>
					</div>
				</div>
			</div>
		</div>


		<div id="bdw" class="bdw">
			<div id="bd" class="cf">
				<div id="coupons">
					<div class="dashboard" id="dashboard">
						<ul>
								<li >
									<a href="orderitemservlet?action=queryByUser&username=<%=userName%>&city=<%=city %>">�ҵĶ���</a><span></span>
								</li>
								<li class="current">
									<a href="myintegral.jsp?city=<%=city %>">�ҵĻ���</a><span></span>
								</li>
								<li>
									<a href="myinformation.jsp?city=<%=city %>">�ҵ�����</a><span></span>
								</li>
								<li>
									<a href="collectionservlet?action=list&username=<%=userName%>&city=<%=city %>">�ҵ��ղ�</a><span></span>
								</li>
							</ul>
					</div>
					<div id="content" class="coupons-box clear">
						<div class="box clear">
							<div class="box-top"></div>
							<div class="box-content">
								<div class="head">
									<h2>
										�ҵĻ���
									</h2>
           						 </div>
									<%
										userDao dao = new userDao();
										User u = dao.query(userName);
									%>
									<div class="sect">

										<div style="margin: 0 20px;">
											<p>
												<h3>
													����ǰ�Ļ����ǣ�<%=u.getUserScore()%>
												</h3>
											</p></br>

											<p>
												<a href="">�����Ƴ����ֻ����Ȼ�������ڴ���</a>
											</p>
										</div>

									</div>


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
									<h3 class="first">
										������û��֣�
									</h3>
									<p>
										ͨ�����Ż�����վ�϶����ѹ��Ķ����������ۣ����ɻ�����ÿ���ֽ����ѽ����ȵĻ��֣������÷���������ȯ֧���Ĳ��֣���
									</p>
									<h3>
										������ʲô�ã�
									</h3>
									<p>
										�����Ƴ����ֻ����Ȼ�������ڴ���
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