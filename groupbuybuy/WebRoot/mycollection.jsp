<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>

		<meta http-equiv=content-type content="text/html; charset=UTF-8" />
		<title>沃团 - 精品团购每一天 |${city}购物|${city}团购|${city}打折</title>
		<meta name="description"
			content="精品团购每一天|${city}购物|${city}团购|${city}打折" />
		<meta name="keywords"
			content="沃团, ${city}, ${city}沃团，${city}购物，${city}团购，${city}打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
			title="订阅更新" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
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
					<!-- <div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
								<c:choose>
									<c:when test="${city=='tianjin'}">
								哈尔滨
								</c:when>
									<c:when test="${city=='beijing'}">
								北京
								</c:when>
									<c:otherwise>
								哈尔滨
								</c:otherwise>
								</c:choose>

							</h2>
						</div>

						<a href="selectcity.jsp">切换城市</a>


					</div> -->
					<%-- <div id="header-subscribe-body" class="subscribe">
						<form action="http://localhost/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								想知道
								<lable id="citys">${city}</lable>
								明天的团购是什么吗？
							</label>
							<input type="hidden" name="city_id" value="4" />
							<input id="header-subscribe-email" type="text"
								xtip="输入Email，订阅每日团购信息..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="订阅" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; 短信订阅，免费！</a>&nbsp;
							<a class="sms" onclick="X.miscajax('sms','unsubscribe');">&raquo;
								取消手机订阅</a> </span>
					</div>--%>
					<ul class="nav cf">
						<%
							String userName = (String) session.getAttribute("userName");
						%>
						<li>
							<a href="produceservlet?action=selectcity&city=${city}">今日团购</a>
						</li>
						<%-- <li>
							<a href="produceservlet?action=listformer&city=${city}%>">往期团购</a>
						</li>--%>
						<li>
							<a href="wzmtservlet?action=list&city=${city}">玩转沃团</a>
						</li>
						<c:choose>
							<c:when test="${userName!=null}">
								<a href="talkwithservlet?action=list&city=${city}">讨论区</a>
							</c:when>
							<c:otherwise>
								<a href="login.jsp">讨论区</a>
							</c:otherwise>
						</c:choose>
					</ul>
					<%-- <div class="refer">
						&raquo;&nbsp;
						<a href="">邮件订阅</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="">邀请好友</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="">优惠券验证及消费登记</a>
					</div>--%>

					<div class="logins">
						<ul id="account">
							<%
								if (userName == null) {
							%>
							<li class="login">
								<a href="regedit.html">注册</a>
							</li>
							<li class="login">
								<a href="login.jsp">登录</a>
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
									id="myaccount" class="account">我的团购</a>
							</li>

							<li class="login">
								<a href="login.jsp">退出</a>
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
									<a href="orderitemservlet?action=queryByUser&username=<%=userName%>&city=${city}">我的订单</a><span></span>
								</li>
								<li >
									<a href="myintegral.jsp?&city=${city}">我的积分</a><span></span>
								</li>
								<li>
									<a href="myinformation.jsp?&city=${city}">我的资料</a><span></span>
								</li>
								<li class="current">
									<a href="collectionservlet?action=list&username=<%=userName%>&city=${city}">我的收藏</a><span></span>
								</li>
							</ul>
					</div>
					<div id="content" class="coupons-box clear">
						<div class="box clear">
							<div class="box-top"></div>
							<div class="box-content">
								<div class="head">
									<h2>
										我的收藏
									</h2>

								</div>
								<div class="sect">
									<table id="orders-list" cellspacing="0" cellpadding="0"
										border="0" class="coupons-table">
										<tr>
											<th width="300px">
												团购信息
											</th>
											<th width="80px">
												价格
											</th>
											<th width="150px">
												收藏时间
											</th>
											<th width="150px">
												状态
											</th>
											<th width="150px">
												操作
											</th>
										</tr>
										<table>
											<c:forEach items="${requestScope.list}" var="d">

												<tr class="alt">

													<td style="text-align: left;" width="300px">
														<img src="images/${d.collImg}" width="100" height="70" />
														<a class="deal-title"
															href="produceservlet?action=query&proId=${d.collProId}"
															target="_blank">${d.collTitle}</a>
													</td>

													<td width="140px">
														<span class="money">¥</span>${d.collPrice}
													</td>
													<td class="deal-buy-quantity" width="140px">
														${d.collTime}
													</td>
													<td width="140px">

														<span class="unpay"> 
														    <jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
                                                            <fmt:formatDate value='${d.collProEndTime}' type='date' dateStyle='default' var="cPEtime" pattern="yyyy/MM/dd"/>
                                                            <fmt:formatDate value='${now}' type='date' dateStyle='default' var="nowTime" pattern="yyyy/MM/dd"/>
                                                            <c:choose>
                                                               <c:when test="${cPEtime>=nowTime}">
                                                                                                                                                                                            团购进行中
                                                               </c:when>
                                                               <c:otherwise>
                                                                                                                                                                                            团购已结束
                                                               </c:otherwise>
                                                            </c:choose>
														</span>
													</td>
													<td class="op" width="140px">
														<a href="produceservlet?action=query&proId=${d.collProId}&city=${city}">购买</a>
														<a
															href="collectionservlet?action=delete&collId=${d.collId}&username=<%=userName%>&city=${city}">删除</a>
													</td>
												</tr>

											</c:forEach>
										</table>
										<tr>
											<td colspan="5">
												<ul class="paginator">
													<li class="current">
														1
													</li>
												</ul>
											</td>
										</tr>
									</table>
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
										我已支付成功，为什么没有优惠券？
									</h3>
									<p>
										因为还没有到达最低团购人数，一旦凑够人数，您就会看到优惠券了。
									</p>
									<h3>
										什么是已过期订单？
									</h3>
									<p>
										如果某个订单未及时付款，那么等团购结束时就无法再付款了，这种订单就是过期订单。
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