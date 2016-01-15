<%@ page language="java" import="java.util.*,org.cw.group.dao.*,org.cw.group.bean.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	
		<meta http-equiv=content-type content="text/html; charset=gbk"/>
		<title>沃团 - 管理后台</title>
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
								管理后台
							</h2>
							
						</div>
						<div id="guides-city-change" class="change"></div>
					</div>
					<ul class="nav cf">
						<li  class="current">
							<a href="bgindex.jsp">首页</a>
						</li>
						<li>
							<a href="produceservlet?action=list&flag=3">团购</a>
						</li>
						<li>
							<a href="orderitemservlet?action=list">订单</a>
						</li>
						<li>
							<a href="userservlet?action=list">用户</a>
						</li>
						<li class="login">
							 <a href="logout.jsp" onclick="session.invalidate();">退出</a>
						</li>
						
						<%-- <li>
							<a href="traderservlet?action=list">商户</a>
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
											首页
											
										</h2>
									</div>
									<div class="sect">
										<div class="wholetip clear">
											<h3>
												今日数据
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
												今日注册用户数：<%=total %>
											</p>
											<p>
												今日团购订单数：<%=ordTotal %>
											</p>
										</div>
										<div class="wholetip clear">
											<h3>
												统计数据
											</h3>
										</div>
										<div style="margin: 0 20px;">
										<% total=dao.regTotal("1"); 
										   ordTotal=ordDao.ordTotal("1");
										   produceDao proDao=new produceDao();
										   int proTotal=proDao.proTotal();
										%>
											<p>
												团购项目数：<%=proTotal %>
											</p>
											<p>
												用户注册数：<%=total %>
											</p>
<%-- 											
											<p>
												团购订单数：<%=ordTotal %>
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
							<li>
								<a href="index.jsp">网站前台</a>
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
