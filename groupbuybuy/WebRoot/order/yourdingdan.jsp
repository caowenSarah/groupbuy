<%@ page language="java" import="java.util.*,org.cw.group.bean.*,org.cw.group.dao.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
	 
		<meta http-equiv=content-type content="text/html; charset=GBK" />
		<title>近期团购 | 沃团 - 精品团购每一天 |${city}购物|${city}团购|${city}打折</title>
		<meta name="description" content="精品团购每一天|${city}购物|${city}团购|${city}打折" />
		<meta name="keywords" content="沃团, ${city}, ${city}沃团，${city}购物，${city}团购，${city}打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="" rel="alternate" title="订阅更新" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css" media="screen" charset="GBK" />
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
						<a href="" class="link"><img
								src="images/logo0000.JPG" />
						</a>
					</div>
<%-- 					
					<div class="guides">
				
						<div class="city">
							<h2 id="tihuanduixiang">
							<%String city=request.getParameter("city");
							if(city.equals("haerbin")) {%>
								天津
							<%}else if(city.equals("beijing")){%>
								天津
							<%}else{%>
								天津
							<%} %>
								
							</h2>
						</div>
						 <a href="selectcity.jsp">切换城市</a>	
					
					</div>
--%>						
					<%-- <div id="header-subscribe-body" class="subscribe">
						<form action="" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								想知道明天的团购是什么吗？
							</label>
							<input type="hidden" name="city_id" value="4" readnly="true"/>
							<input id="header-subscribe-email" type="text"
								xtip="输入Email，订阅每日团购信息..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="订阅" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; 短信订阅，免费！</a>&nbsp;
							<a class="sms" onclick="X.miscajax('sms','unsubscribe');">&raquo;
								取消手机订阅</a>
						</span>
					</div>--%>
					<ul class="nav cf">
						<li>
							<a href="produceservlet?action=selectcity">今日团购</a>
						</li>
						<%-- <li>
							<a href="produceservlet?action=listformer">往期团购</a>
						</li>--%>
						<li>
							<a href="wzmtservlet?action=list">玩转沃团</a>
						</li>
						<c:choose>
							<c:when test="${userName!=null}">
								<a href="talkwithservlet?action=list">讨论区</a>
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
						<a id="verify-coupon-id" href="javascript:;">优惠券验证及消费登记</a>
					</div>--%>
					<div class="logins">
						<ul id="account">
							<%
								String userName = (String) session.getAttribute("userName");
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
								<a href="orderitemservlet?action=queryByUser&username=<%=userName%>" id="myaccount" class="account">我的团购</a>
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

			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="content">
					<%  userDao dao=new userDao(); 
					    User u=dao.query(userName);
					    
					    //double totalPrice = (p.getProTprice()*Long.parseLong(proNum));
					%>
							<input id="deal-per-number" value="1" type="hidden" />
							<div id="deal-buy" class="box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											您的订单
										</h2>
									</div>
									<c:choose>
										<c:when test="${proNumInOrder<p.proLowAmount}">
											<td class="deal-buy-total">
											<form action="yaofukuan.jsp?totalPrice=${p.proMprice * proNum}&oitemId=${oitemId}" method="post">
											</td>
										</c:when>
										<c:otherwise>
											<form action="yaofukuan.jsp?totalPrice=${p.proTprice * proNum}&oitemId=${oitemId}" method="post">														
										</c:otherwise>
									</c:choose>									
									
									<div class="sect">
										<table class="order-table" width="469" height="248">
											<tr>
												<th class="deal-buy-desc">
													商品
												</th>
												<th class="deal-buy-quantity">
													数量
												</th>
												<th class="deal-buy-multi"></th>
												<th class="deal-buy-price">
													价格
												</th>
												<th class="deal-buy-equal"></th>
												<th class="deal-buy-total">
													总价
												</th>
											</tr>
											<tr>
												<td class="deal-buy-desc">
													${p.proTitle }
												</td>
												<td class="deal-buy-quantity">
<%--												
													<input type="text" class="input-text f-input" maxlength="4"
														name="dnumber" value="<%=proNum %>" id="deal-buy-quantity-input" />
													<br />
--%>														
													<span style=" color: gray;">${proNum }</span>
												</td>
												<td class="deal-buy-multi">
													x
												</td>
												<c:choose>
													<c:when test="${proNumInOrder<p.proLowAmount}">
														<td class="deal-buy-price">
															<span class="money"></span><span id="deal-buy-price">${p.proMprice}</span>
														</td>
													</c:when>
													<c:otherwise>
														<td class="deal-buy-price">
															<span class="money"></span><span id="deal-buy-price">${p.proTprice}</span>
														</td>													
													</c:otherwise>
												</c:choose>	
												<td class="deal-buy-equal">
													=
												</td>
												<c:choose>
													<c:when test="${proNumInOrder<p.proLowAmount}">
														<td class="deal-buy-total">
															<span class="money"></span><span id="deal-buy-total">${p.proMprice * proNum}</span>
														</td>
													</c:when>
													<c:otherwise>
														<td class="deal-buy-total">
															<span class="money"></span><span id="deal-buy-total">${p.proTprice * proNum}</span>
														</td>													
													</c:otherwise>
												</c:choose>
											</tr>

											<tr class="order-total">
												<td class="deal-buy-desc">
													<strong>应付总额：</strong>
												</td>
												<td class="deal-buy-quantity"></td>
												<td class="deal-buy-multi"></td>
												<td class="deal-buy-price"></td>
												<td class="deal-buy-equal">
													=
												</td>
												<c:choose>
													<c:when test="${proNumInOrder<p.proLowAmount}">
														<td class="deal-buy-total">
															<span class="money"></span><strong id="deal-buy-total-t">${p.proMprice * proNum}</strong>
														</td>
													</c:when>
													<c:otherwise>
														<td class="deal-buy-total">
															<span class="money"></span><strong id="deal-buy-total-t">${p.proTprice * proNum}</strong>
														</td>														
													</c:otherwise>
												</c:choose>
											</tr>
										</table>
										
										<input id="deal-buy-cardcode" type="hidden" name="cardcode"
											maxlength="8" value="" />
										<input type="hidden" name="id" value="" />
										<div class="form-submit">
										
											<input type="submit" class="formbutton" name="buy"	value="确认订单,提交" />
											
											 
										</div>
									</div>
									</form>
								</div>
								<div class="box-bottom"></div>
							</div>
						
					</div>
					<div id="sidebar">
						<div class="sbox">
							<div class="sbox-top"></div>
							<div class="sbox-content">
								<%-- <div class="credit">
								
									<h2>
										帐户余额
									</h2>
									<p>
										您的帐户余额：
										<span class="money">￥</span><%=u.getUserAccount()%>
									</p>
								</div>--%>
							</div>
							<div class="sbox-bottom"></div>
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
								<a href="">版权声明</a>
							</li>

							<li>
								<a href="privacystatement.jsp">隐私声明</a>
							</li>
						</ul>
					</li>
					<li class="col end">
						<div class="logo-footer">
							<a href=""><img src="images/logo-foo.jpg" />
							</a>
						</div>
					</li>
				</ul>
				<div class="copyright">
					<p>
						&copy;
						<span>2010</span>&nbsp;沃团(now6.cn)版权所有&nbsp; 使用沃团前必读&nbsp;
						&nbsp;Powered by wotuan.com
						</a>
					</p>
				</div>
			</div>
		</div>--%>
		</div>
	</body>
</html>