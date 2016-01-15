<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	
		<meta http-equiv=content-type
			content="text/html; charset=gbk;charset=gbk" />
		<title>沃团 - 管理后台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
		<script type="text/javascript">
	var WEB_ROOT = '/mt';
</script>
		<script src="images/index000.js" type="text/javascript"></script>
		<script type="text/javascript">
	function showme(v0, v1, v2, v3) {
		DialogDiv.style.display = "block";
		DialogDiv.style.top = "230px";
		$("#uid").val(v1);
		$("#a").text(v0);
		$("#b").text(v1);
		$("#c").text(v2);
		$("#d").text(v3);
		BgDiv.style.display = "block";
		BgDiv.style.height = "document.height()";
	}

	function closeMe() {
		DialogDiv.style.display = "none";
		BgDiv.style.display = "none";
	}
</script>

		<style type="text/css">
.boxBorder {
	border: 1px solid green;
}

body,h2 {
	margin: 0;
	padding: 0;
}

#BgDiv {
	background-color: #e3e3e3;
	position: absolute;
	z-index: 99;
	left: 0;
	top: 0;
	display: none;
	width: 100%;
	height: 1000px;
	opacity: 0.5;
	filter: alpha(opacity = 50);
	-moz-opacity: 0.5;
}

#DialogDiv {
	position: absolute;
	width: 400px;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	height: auto;
	z-index: 100;
	background-color: #fff;
	border: 1px #8FA4F5 solid;
	padding: 1px;
}

#DialogDiv h2 {
	height: 25px;
	font-size: 14px;
	background-color: teal;
	position: relative;
	padding-left: 10px;
	line-height: 25px;
	color: white;
}

#DialogDiv h2 a {
	position: absolute;
	right: 5px;
	font-size: 12px;
	color: white;
}

#DialogDiv .form {
	padding: 10px;
}
</style>
	</head>
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">
			<script type="text/javascript" src="images/xheditor.js"></script>
			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://192.168.2.197/mt/index.php" class="link"
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
						<li>
							<a href="produceservlet?action=list&flag=3">团购</a>
						</li>
						<li>
							<a href="orderitemservlet?action=list">订单</a>
						</li>
						<li class="current">
							<a href="userservlet?action=list">用户</a>
						</li>
						<%-- <li>
							<a href="traderservlet?action=list">商户</a>
						</li>--%>
						
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="coupons">
						<div class="dashboard" id="dashboard">
							<ul>
								<li class="current">
									<a href="userservlet?action=list">用户列表</a><span></span>
								</li>
								<li>
									<a href="userservlet?action=list&flag=0">管理员列表</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											用户列表
										</h2>
										<ul class="filter">
											<li><br /></li>
										</ul>
									</div>
									<div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="50">
													ID
												</th>
												<th width="200">
													Email/用户名
												</th>
												<th width="100" nowrap>
													城市
												</th>
												<th width="40">
													真实姓名
												</th>
												<th width="40">
													邮编
												</th>
												<th width="120">
													注册时间
												</th>
												<th width="100">
													联系电话
												</th>
											<%-- 	<th width="120">
													操作
												</th>--%>
											</tr>

											<c:forEach items="${requestScope.list}" var="us">
												<c:choose>
													<c:when test="${us.userPower =='1'}">
														<tr class="alt" id="team-list-id-3">
															<td>
																${us.userId}
															</td>
															<td>
																${us.userEmail}
																<br />
																${us.userName}
																
															</td>
															<td>
																
																${us.userCity} 
															</td>
															<td>
																${us.userRealName}
															</td>
															<td>
																${us.userZipCode}
															</td>
															<td>
																
																${us.userCreateTime}
															</td>
															<td>
																${us.userTel}
															</td>
															<%--<td class="op">
																<a
																	onclick="showme('${us.userEmail}','${us.userName}','${us.userTel}','${us.userAccount}')"
																	class="ajaxlink">详情</a>｜
																<a href="userservlet?action=delete&id=${us.userId}">删除</a>
															</td> --%>
														</tr>

													</c:when>
												</c:choose>
											</c:forEach>


											<tr>
												<td colspan="8">
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
		</div>
		</div>




		<div id="BgDiv"></div>
		<div id="DialogDiv" style="display: none">
			<h2 id="bianji">
				用户信息
				<a href="javascript: closeMe( )">关闭</a>
			</h2>
			<div class="form">
				<form action="../chongzhi.do" method="post">
					<br />
					<table border="0">
						<tr>
							<td width="240px">
								E m i a l:
							</td>
							<td id="a" width="150px" align="left"></td>
							<td></td>
						</tr>
						<tr>
							<td>
								用  户  名：
							</td>
							<td id="b" width="150px" align="left"></td>
							<td></td>
						</tr>

						<tr>
							<td>
								手机号码：
							</td>
							<td id="c" width="150px" align="left"></td>
							<td></td>
						</tr>
						<tr>
							<td>
								帐户余额：
							</td>
							<td id="d" width="150px" align="left"></td>
							<td width="150px"></td>
						</tr>
						<tr>
							<td colspan=3>
								<hr />
							</td>
						</tr>
						<tr>
							<td>
								帐户充值：
							</td>
							<td>
								<input type="text" name="money"></input>
								<input type="hidden" value="" id="uid" name="username"></input>
							</td>
						</tr>
					</table>
					<br />
					&nbsp;&nbsp;&nbsp;
					<input type="submit" value="提&nbsp;交" />
				</form>
			</div>--%>
		</div>
	</body>
</html>