<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="org.cw.group.dao.*,org.cw.group.bean.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>

		<meta http-equiv=content-type content="text/html; charset=gbk" />
		<title>�� - ��Ʒ�Ź�ÿһ�� |${city}����|${city}�Ź�|${city}����</title>
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
						<a href="" class="link"><img src="images/logo0000.JPG" /> </a>
					</div>
					<!--  <div class="guides">
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
				<%-- 	<div id="header-subscribe-body" class="subscribe">
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
					<%-- 	<li>
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
								<li>
									<a href="myintegral.jsp?city=<%=city %>">�ҵĻ���</a><span></span>
								</li>
								<li  class="current">
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
											�ҵ�����
										</h2>
										<%
										userDao dao = new userDao();
										User u = dao.query(userName);
										%>
										<ul class="filter">
											<li>
												<a href="userservlet?action=queryById&id=<%=u.getUserId() %>&city=<%=city %>">�޸�����</a>
											</li>
										</ul>
									</div>
									<div class="sect">
										
											
											<div class="field">
												
												<label>
													�û�Email
												</label>
												<input type="text" size="30" name="email"  disabled
													id="user-edit-email" class="f-input"
													value="<%=u.getUserEmail() %>" readonly />
											</div>
											<div class="field">
												<label>
													�û���
												</label>
												<input type="text" size="30" name="username"  disabled
													id="user-edit-username" class="f-input" value="<%=u.getUserName() %>" readonly />
											</div>
											<div class="field">
												<label>
													�ֻ�����
												</label>
												<input type="text" size="30" name="mobile"
													id="user-edit-mobile" class="number" value="<%=u.getUserTel() %>"
													maxLength="11" />
											</div>
											<%if(u.getUserRealName()==null){%>
											<div class="field">
												<a href="userservlet?action=queryById&id=<%=u.getUserId() %>&city=<%=city %>">������������</a>
											</div>
											<%}else{%>
											<div class="field">
												<label>
													��ʵ����
												</label>
												<input type="text" size="30" name="realname" disabled="disabled" 
													id="user-edit-realname" class="f-input" value="<%=u.getUserRealName()%>" />
											</div>
											<div class="field">
												<label>
													QQ����
												</label>
												<input type="text" size="30" name="qq" id="user-edit-qq" disabled
													class="number" value="<%=u.getUserQq()%>" />
											</div>
											<div class="field">
												<label>
													��������
												</label>
												<input type="text" size="30" name="zipcode" disabled
													id="user-edit-zipcode" class="f-input" value="<%=u.getUserZipCode() %>" />
											</div>
											<div class="field">
												<label>
													���͵�ַ
												</label>
												<input type="text" size="30" name="address" disabled
													id="user-edit-address" class="f-input" value="<%=u.getUserPostAdd() %>" />
											</div>
											
											<%} %>
											
											
											<div class="act">
												
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
											����֧���ɹ���Ϊʲôû���Ż�ȯ��
										</h3>
										<p>
											��Ϊ��û�е�������Ź�������һ���չ����������ͻῴ���Ż�ȯ�ˡ�
										</p>
										<h3>
											ʲô���ѹ��ڶ�����
										</h3>
										<p>
											���ĳ������δ��ʱ�����ô���Ź�����ʱ���޷��ٸ����ˣ����ֶ������ǹ��ڶ�����
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
