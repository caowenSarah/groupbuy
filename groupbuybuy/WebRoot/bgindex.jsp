<%@ page language="java" import="java.util.*,org.cw.group.dao.*,org.cw.group.bean.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	
		<meta http-equiv=content-type content="text/html; charset=gbk"/>
		<title>���� - �����̨</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
		<script type="text/javascript">
	var WEB_ROOT = '/mt';
</script>
		<script src="images/index000.js" type="text/javascript"></script>
	</head>
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">
			<script type="text/javascript" src="images/xheditor.js"></script>
			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://192.168.2.49/mt/index.php" class="link"
							target="_blank"><img src="images/logo0000.JPG" /> </a>
					</div>
					<div class="guides">
						<div class="city">
							<h2>
								�����̨
							</h2>
							
						</div>
						<div id="guides-city-change" class="change"></div>
					</div>
					<ul class="nav cf">
						<li  class="current">
							<a href="bgindex.jsp">��ҳ</a>
						</li>
						<li>
							<a href="produceservlet?action=list&flag=3">�Ź�</a>
						</li>
						<li>
							<a href="orderitemservlet?action=list">����</a>
						</li>
						<li>
							<a href="userservlet?action=list">�û�</a>
						</li>
						<li class="login">
							 <a href="logout.jsp" onclick="session.invalidate();">�˳�</a>
						</li>
						
						<%-- <li>
							<a href="traderservlet?action=list">�̻�</a>
						</li>--%>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="help">
						<div class="dashboard" id="dashboard">
							
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											��ҳ
											
										</h2>
									</div>
									<div class="sect">
										<div class="wholetip clear">
											<h3>
												��������
											</h3>
										</div>
										<div style="margin: 0 20px;">
										<%
										
										userDao dao=new userDao();
										int total=dao.regTotal("0");
										OrderItemDao ordDao=new OrderItemDao();
										int ordTotal=ordDao.ordTotal("0");
										
										 %>
											<p>
												����ע���û�����<%=total %>
											</p>
											<p>
												�����Ź���������<%=ordTotal %>
											</p>
										</div>
										<div class="wholetip clear">
											<h3>
												ͳ������
											</h3>
										</div>
										<div style="margin: 0 20px;">
										<% total=dao.regTotal("1"); 
										   ordTotal=ordDao.ordTotal("1");
										   produceDao proDao=new produceDao();
										   int proTotal=proDao.proTotal();
										%>
											<p>
												�Ź���Ŀ����<%=proTotal %>
											</p>
											<p>
												�û�ע������<%=total %>
											</p>
<%-- 											
											<p>
												�Ź���������<%=ordTotal %>
											</p>
 --%>											
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

		<%-- 	<div id="ftw">
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
							<li>
								<a href="index.jsp">��վǰ̨</a>
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
