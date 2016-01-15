<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv=content-type content="text/html; charset=GBK"/>
		<title>沃团 - 管理后台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="GBK" />
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
						<li>
							<a href="bgindex.jsp">首页</a>
						</li>
						<li class="current">
							<a href="produceservlet?action=list&flag=3">团购</a>
						</li>
						<li>
							<a href="orderitemservlet?action=list">订单</a>
						</li>
						<li >
							<a href="userservlet?action=list">用户</a>
						</li>
<%--						
						<li>
							<a href="traderservlet?action=list">商户</a>
						</li>
--%>
						<li class="login">
							 <a href="logout.jsp" onclick="session.invalidate();">退出</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="coupons">
						<div class="dashboard" id="dashboard">
							<ul>
								<li >
									<a href="produceservlet?action=list&flag=3">当前团购</a><span></span>
								</li>
								<li>
									<a href="produceservlet?action=list&flag=0">成功团购</a><span></span>
								</li>
								<li class="current">
									<a href="produceservlet?action=list&flag=1">失败团购</a><span></span>
								</li>
								<li>
									<a href="newTuangou.jsp">新建团购</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											失败团购
										</h2>
									</div>
									<div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="40">
													ID
												</th>
												<th width="400">
													团购项目
												</th>
												<th width="80" nowrap>
													类别
												</th>
												<th width="100">
													日期
												</th>
												<th width="50">
													成交
												</th>
												<th width="60" nowrap>
													团购价
												</th>
												<th width="140">
													操作
												</th>
											</tr>
											<c:forEach items="${requestScope.List}" var="p">
											<tr class="alt" id="team-list-id-3">
												<td>
													<a>${p.proId}</a>
												</td>
												<td>
													<a class="deal-title"
														href="http://192.168.2.49/mt/team.php?id=3"
														target="_blank">${p.proTitle}</a>
												</td>
												<td >
													${p.proType}
												</td>
												<td nowrap>
													
													${p.proEndTime}
												</td>
												<td nowrap>
													${p.proBuyAmount}/${p.proLowAmount}
												</td>
												<td nowrap>
													<span class="money">￥</span>${p.proTprice}
												</td>
												<td>
													<a href="produceservlet?action=delete&proId=${p.proId}&flag=1" class="remove-record">删除</a>
												</td>
											</tr>
											</c:forEach>
											<tr>
												<td colspan="7">
													<ul class="paginator">
														<li class="current">
															1
														</li>
													</ul>
											</tr>
										</table>
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
