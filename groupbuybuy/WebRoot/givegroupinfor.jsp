<%@ page language="java" import="java.util.*,org.cw.group.util.*"
	pageEncoding="gbk"%>
<%@ page import="org.cw.group.bean.*,org.cw.group.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
	 
		<meta http-equiv=content-type
			content="text/html; charset=gbk" />
		<title>�����Ź� | ���� - ��Ʒ�Ź�ÿһ�� |${city}����|${city}�Ź�|${city}����</title>
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
						<a href="http://localhost/mt/index.php" class="link">-<img
								src="images/logo0000.JPG" />
						</a>
					</div>
					<!-- <div class="guides">
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
					
					</div> -->
					<%-- <div id="header-subscribe-body" class="subscribe">
						<form action="http://localhost/mt/subscribe.php" method="post"
							id="header-subscribe-form">
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
					</div>--%>
					<ul class="nav cf">
						<li>
							<a href="produceservlet?action=selectcity&city=<%=city %>">�����Ź�</a>
						</li>
						<li>
							<a href="produceservlet?action=listformer&city=<%=city %>">�����Ź�</a>
						</li>
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
				<%-- 	<div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.80/mt/subscribe.php">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.80/mt/account/invite.php">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">�Ż�ȯ��֤�����ѵǼ�</a>
					</div>--%>
					<div class="logins">
						<ul id="account">
							<%
								String userName = (String) session.getAttribute("userName");
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
		</div>


		<div id="bdw" class="bdw">

			<div id="bd" class="cf">

				<div id="recent-deals">
					<div id="content">
						<div class="box">
							<div class="box-top"></div>
							<div class="box-content">

								<div class="box-content">
									<div class="head">
										<h2>
											�ṩ�Ź���Ϣ
										</h2>
									</div>
									<form id="feedback-form" method="post"
										action="giveinforservlet?action=insert&city=<%=city %>">
										<p class="notice">
											��������̼ҡ������̳ǣ�������������֯�Ź�������д��
										</p>

										<div class="field">
											<label for="fullname">
												���ĳƺ�
											</label>
											<input name="name" data-tips="����д���ĳƺ�" id="fullname"
												class="f-text" value="" />
											<span class="hint">������д</span>
										</div>
										<div class="field">
											<label for="number">
												���ĵ绰
											</label>
											<input name="mobile" data-tips="����д���ĵ绰" id="number"
												class="f-text" value="" />
											<span class="hint">������д</span>
										</div>
										<div class="field">
											<label for="contacts">
												������ϵ��ʽ
											</label>
											<input name="contact" id="contacts" class="f-text" value="" />
											<span class="hint">�����������ֻ���QQ�Ż����䣬������ϵ</span>
										</div>
										<div class="field">
											<label for="feedback-city">
												����
											</label>

											<span class="province-city-select">
												<select name="province">
													<option value="-1">
														--����--
													</option>
													<option value="����">
														����
													</option>
													<option value="���">
														���
													</option>
													<option value="�ӱ�">
														�ӱ�
													</option>
													<option value="ɽ��">
														ɽ��
													</option>
													<option value="���ɹ�">
														���ɹ�
													</option>
													<option value="����">
														����
													</option>
													<option value="����">
														����
													</option>
													<option value="������">
														������
													</option>
													<option value="�Ϻ�">
														�Ϻ�
													</option>
												</select> </span>
										</div>
										<div class="field">
											<label for="feedback-bizname">
												�Ź��̼�����
											</label>
											<input name="bizname" data-tips="����д�Ź��̼�����"
												id="feedback-bizname" class="f-text" value="" />
											<span class="hint">������д</span>
										</div>
										<div class="field">
											<label for="category">
												�Ź�����
											</label>
											<select name="type" id="category" class="f-select">
												<option value="1">
													�͹���ʳ
												</option>
												<option value="2">
													��������
												</option>
												<option value="3">
													����
												</option>
												<option value="4">
													��������
												</option>
												<option value="5">
													�˶�����
												</option>
												<option value="6">
													��������
												</option>
												<option value="0">
													����
												</option>
											</select>
										</div>
										<div class="field cf">
											<label for="suggest">
												�Ź�����
											</label>
											<textarea name="content" data-tips="�Ź����ݲ���Ϊ��" id="suggest"
												class="f-textarea"></textarea>
										</div>
										<div class="act">
											<input type="submit" value="�ύ" class="formbutton" />
										</div>
									</form>
								</div>


								<br />
								<div class="clear"></div>

							</div>
						</div>
						<div class="box-bottom"></div>
					</div>
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

