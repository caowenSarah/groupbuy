<%@ page language="java" import="java.util.*,org.cw.group.bean.*,org.cw.group.dao.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
	 
		<meta http-equiv=content-type
			content="text/html; charset=gbk" />
		<title>�����Ź� |���� - ��Ʒ�Ź�ÿһ�� |${city}����|${city}�Ź�|${city}����</title>
		<meta name="description" content="��Ʒ�Ź�ÿһ��|${city}����|${city}�Ź�|${city}����" />
		<meta name="keywords"
			content="����, ${city}, ${city}���ţ�${city}���${city}�Ź���${city}���ۣ��Ź������ۣ���Ʒ���ѣ�����ָ�ϣ�����ָ��" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
			title="���ĸ���" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script type="text/javascript">var LOGINUID= 0;</script>
		<script src="images/index000.js" type="text/javascript"></script>
		<script type="text/javascript">	
		function selectPlace(txt)
		{
			 var place = document.getElementById("tihuanduixiang");
			 var citys = document.getElementById("citys")
			 var citylist = document.getElementById("citylist")
			 place.innerText=txt;
			 citys.innerText=txt;
			 citylist.innerText=txt;
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
						<a href="http://localhost/mt/index.php" class="link"><img
								src="images/logo0000.JPG" />
						</a>
					</div>
				<!--  	<div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
							<c:choose>
								<c:when test="${city=='tianjin'}">
							���
								</c:when>
								<c:when test="${city=='beijing'}">
								����
								</c:when>
								<c:otherwise>
								���
								</c:otherwise>
							</c:choose>
								
							</h2>
						</div>
						
						 <a href="selectcity.jsp">�л�����</a>	
						
					
					</div>-->
					<%-- <div id="header-subscribe-body" class="subscribe">
						<form action="http://localhost/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪��<lable id="citys">${city}</lable>������Ź���ʲô��
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
					<%String userName = (String) session.getAttribute("userName"); %>
						<li>
							<a href="produceservlet?action=selectcity&city=${city}">�����Ź�</a>
						</li>
					 <li>
							<a href="produceservlet?action=listformer&city=${city}">�����Ź�</a>
						</li>
						<li>
							<a href="wzmtservlet?action=list&city=${city}">��ת����</a>
						</li>
						<c:choose>
							<c:when test="${userName!=null}">
								<a href="talkwithservlet?action=list&city=${city}">������</a>
							</c:when>
							<c:otherwise>
								<a href="login.jsp">������</a>
							</c:otherwise>
						</c:choose>
					</ul>
				<%-- 	<div class="refer">
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
								<a href="orderitemservlet?action=queryByUser&username=<%=userName%>" id="myaccount" class="account">�ҵ��Ź�</a>
							</li>
							
							<li class="login">
								<a href="logout.jsp">�˳�</a>
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


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="learn">
						<div class="dashboard" id="dashboard">
						


							<ul>
								<li class="current">
									<a href="wzmt.jsp" onclick="show(1)">��ת�Ź�</a>
									<span></span>
								</li>
								<li>
									<a href="" onclick="show(2)"></a>
									<span></span>
								</li>
								<li>
									<a href="" onclick="show(3)"></a>
									<span></span>
								</li>
							</ul>
						</div>


						<div id="content" class="about clear">
							<div class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											��ת����
										</h2>
									</div>
									<%	wzmtDao wdao = new wzmtDao();
										Wzmt wz =wdao.getone();  %>
									<div class="sect">
										
											<div id="mydiv"
												style="width: 670px; background: write; display: block">
												<div class="guide"
													style="margin-top: 0px; margin-right: auto; margin-bottom: 0px; margin-left: auto; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; width: 660px; height: 570px; background-image: url(images/bg-guide.jpg); background-attachment: initial; background-origin: initial; background-clip: initial; background-color: initial; position: relative; background-position: initial initial; background-repeat: no-repeat no-repeat;">
													<ol
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
														<li class="step2"
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; position: absolute; left: 443px; top: 190px; width: 150px; font-size: 12px;">
															<p
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
																<%=wz.getFenxiang() %>
															</p>
															<p
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;"></p>
														</li>
														<li class="step3"
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; position: absolute; left: 150px; top: 435px; width: 150px; font-size: 12px;">
															<p
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
																<%=wz.getXiaofei() %>
															</p>
														</li>
														<li class="step4"
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; position: absolute; left: 443px; top: 435px; width: 150px; font-size: 12px;">
															<p
																style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
																<%=wz.getPingjia() %>
															</p>
														</li>
														<ol
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;"></ol>
													</ol>
												</div>
										
									</div>

										<div id="mydiv1"
											style="width: 670px; background: write; display: none">
											<div>
												<p>
													<strong><%=wz.getMtssh()%> </strong>
												</p>
												<p>
													<%=wz.getMtsshhnr()%>
												</p>
												<p>
													<strong> <%=wz.getJttgbuzemgm()%></strong>
												</p>
												<p>
													<%=wz.getJttgbuzemgmnr() %>
												</p>
												<p>
													<strong><%=wz.getRhfk() %></strong>
												</p>
												<p>
													<%=wz.getRhfknr() %>&nbsp; &nbsp; &nbsp;
												</p>
												<p>
													<strong><%=wz.getTgrsbz() %></strong>
												</p>
												<p>
													<%=wz.getTgrsbznr()%>
												</p>
												<p>
													<strong><%=wz.getShsmtj()%></strong>
												</p>
												<p>
													<%=wz.getShsmtjnr()%>
												</p>
												<p>
													<strong><%=wz.getSymtjyh()%> </strong>
												</p>
												<p>
													<%=wz.getSymtjyhnr()%>
												</p>
												<p>
													<strong><%=wz.getMymti()%></strong>��
												</p>
												<p>
													<%=wz.getMymtjnr()%>
												</p>
												<p>
													<strong><%=wz.getJfsmh()%></strong>
												</p>
												<p>
													<%=wz.getJfsmhnr()%>
												</p>
												<p>
													<strong><%=wz.getWshdyj()%></strong>
												</p>
												<p>
													<%=wz.getWshdyjnr()%>
												</p>
												<p>
													<strong><%=wz.getRhtjyj()%></strong>
												</p>
												<p>
													<%=wz.getRhtjyjnr()%>
												</p>
												<p>
													<strong><%=wz.getSmqktk()%></strong>
												</p>
												<p>
													<%=wz.getSmqktknr()%>
												</p>
												<p>
													<strong> <%=wz.getSjzztglx()%> </strong>
												</p>
												<p>
													<%=wz.getSjzztglxnr()%>
												</p>
											</div>
										</div>
									
									<div id="mydiv2"
										style="width: 670px; background: write; display: none">
										
										${tz.mtssm}
										<div class="sect">
											<img src="images/13012762613058.gif" alt="" />
											&nbsp;
											<img src="images/13012762617624.gif" alt="" />
											&nbsp;
											<img src="images/13012762606254.gif" alt="" />
										</div>
									</div>

								</div>
							</div>
						</div>
						<div class="box-bottom"></div>
					</div>
				</div>




				<div id="sidebar">
					<div class="sbox side-business">
						<div class="sbox-bubble"></div>
						<div class="sbox-top"></div>
						<%-- <div class="sbox-content">
							<div class="tip">
								<h2>
									��Ҫ�ṩ�Ź���Ϣ
								</h2>
								<p>
									���Ѵ��ˡ������̼ҡ��Ա��������ǣ�
									<a href="givegroupinfor.jsp">�������</a>
								</p>
							</div>
						</div>
						<div class="sbox-bottom"></div>
					</div>
					<div class="deal-subscribe">
						<div class="top"></div>
						<div class="body" id="deal-subscribe-body">
							<form id="deal-subscribe-form" method="post"
								action="http://localhost/mt/subscribe.php">
								<table class="address">
									<tr>
										<td>
											<input type="text" name="email" class="f-text"
												id="deal-subscribe-form-email" xtip="���������Email..." value="" />
										</td>
										<td>
											<input type="hidden" name="city_id" value="4" />
											<input type="image" src="images/button-s.gif" value="����" />
										</td>
									</tr>
								</table>
							</form>
							<p class="text">
								ÿ�춼���¾�ϲ��
								<br />
								���ǻ��ʼ�֪ͨ����
								<br />
								<span class="required">*</span> �˷��������ʱȡ��
							</p>
						</div>
						<div class="bottom"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- bd end -->
		<!-- bdw end -->

		<div id="ftw">
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