<%@ page language="java" import="java.util.*,org.cw.group.util.*" pageEncoding="UTF-8"%>
<%@ page import="org.cw.group.bean.*,org.cw.group.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
	 
		<meta http-equiv=content-type
			content="text/html; charset=UTF-8" />
		<title>近期团购 |沃团 - 精品团购每一天 |${city}购物|${city}团购|${city}打折</title>
		<meta name="description" content="精品团购每一天|${city}购物|${city}团购|${city}打折" />
		<meta name="keywords"
			content="沃团, ${city}, ${city}沃团，${city}购物，${city}团购，${city}打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
			title="订阅更新" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="utf-8" />
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
						<a href=" " class="link"><img
								src="images/logo0000.JPG" />
						</a>
					</div>
<!-- 					
					<div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
							<c:choose>
								<c:when test="${city=='tianjin'}">
								天津
								</c:when>
								<c:when test="${city=='beijing'}">
								北京
								</c:when>
								<c:otherwise>
								天津
								</c:otherwise>
							</c:choose>
 -->								
							</h2>
						</div>
						
						 <a href="selectcity.jsp">切换城市</a>	
					</div>
					
						<%-- <div id="header-subscribe-body" class="subscribe">
						<form action=" " method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								想知道<lable id="citys">${city}</lable>明天的团购是什么吗？
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
								取消手机订阅</a>
						</span>
					</div>--%>
					<ul class="nav cf">
					<%String userName = (String) session.getAttribute("userName"); %>
						<li>
							<a href="produceservlet?action=selectcity&city=${city}">今日团购</a>
						</li>
						 <li>
							<a href="produceservlet?action=listformer&city=${city}">往期团购</a>
						</li>
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
					<%--<div class="refer">
						&raquo;&nbsp;
						<a href="">邮件订阅</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="">邀请好友</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="">优惠券验证及消费登记</a>
					</div> --%>
					<div class="logins">
						<ul id="account">
							<%
							    Page pagea =(Page)request.getAttribute("page");
								
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
								 <a href="logout.jsp" onclick="session.invalidate();">退出</a>
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
								
									<div class="head">
										<h2>
											<lable id="citylist">
											<c:choose>
												<c:when test="${city=='tianjin'}">
												天津
												</c:when>
												<c:when test="${city=='beijing'}">
												北京
												</c:when>
												<c:otherwise>
												天津
												</c:otherwise>
											</c:choose></lable>往期团购
										</h2>
									</div>
									<div class="sect">
									<%
								List<Produce> list=(List<Produce>)request.getAttribute("List");
								//System.out.print(list.size());
								int showPage=1;
								for(Produce p:list){
							 %>
										
											<ul class="deals-list">
												<li class=" first">
													<p class="time">
														
														<%=p.getProEndTime() %>
													</p>
													<div style="height: 50px; overflow: hidden">
														<h4>
															<a href="http://localhost/mt/team.php?id=4"
																title="<%=p.getProTitle() %>"
																target="_blank"></a>
														</h4>
													</div>
													<div class="pic">
														<div class="isopen"></div>
														<a target="_blank" href="produceservlet?action=query&proId=<%=p.getProId()%>">
														<img alt="<%=p.getProTitle() %>" src="images/<%=p.getProImg2() %>"width="200" height="121"/>
														</a>
													</div>
													<div class="info">
														<%-- <p class="total">
															<strong class="count"><%=p.getProBuyAmount() %></strong>人购买
														</p>--%>
														<p class="price">
															原价：
															<strong class="old"><span class="money">¥</span><%=p.getProMprice() %></strong>
															<br />
															折扣：
															<strong class="discount"><%=Math.ceil(p.getProTprice()/p.getProMprice()*10)%></strong>
															<br />
															现价：
															<strong><span class="money">¥</span><%=p.getProTprice() %></strong>
															<br />
															<strong><span><a target="_blank" rel="nofollow" href="produceservlet?action=query1&proId=<%=p.getProId()%>">购买</a>	</span></strong>
															<br />
											               				
														</p>
													</div>
												</li>
											</ul>
										<%} 										
										%>
										<div class="clear"></div>
										<div>
											<ul class="paginator">
												<li class="current">
												  <%--   <a href="produceservlet?action=listformer&pageCurrent=1">[首页]</a>--%>
												   
												    <a href="produceservlet?action=listformer&city=${city}&pageCurrent=<%=showPage<=1?1:showPage-1 %>">[上一页]</a>
												    <a href="produceservlet?action=listformer&city=${city}&pageCurrent=<%=showPage>pagea.getPageCount()?pagea.getPageCount():showPage+1%>">[下一页]</a>
													<%-- <a href="produceservlet?action=listformer&city=${city}&pageCurrent=<%=pagea.getPageCount()%>">[尾页]</a>--%>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>
						<div id="sidebar">
							<%-- <div class="deal-subscribe">
								<div class="top"></div>
								<div class="body" id="deal-subscribe-body">
									<form id="deal-subscribe-form" method="post"
										action="http://localhost/mt/subscribe.php">
										<table class="address">
											<tr>
												<td>
													<input type="text" name="email" class="f-text"
														id="deal-subscribe-form-email" xtip="请输入你的Email..."
														value="" />
												</td>
												<td>
													<input type="hidden" name="city_id" value="4" />
													<input type="image" src="images/button-s.gif" value="订阅" />
												</td>
											</tr>
										</table>
									</form>
									<p class="text">
										每天都有新惊喜，
										<br />
										我们会邮件通知您！
										<br />
										<span class="required">*</span> 此服务可以随时取消
									</p>
								</div>
								<div class="bottom"></div>
							</div>
						</div>
					</div>
				</div>
				<!-- bd end -->
			</div>
			<!-- bdw end -->

			<div id="ftw">
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
								<a href="wzmt.jsp">玩转小米团</a>
							</li>
							<li>
								<a href="wzmt.jsp">常见问题</a>
							</li>
							<li>
								<a href="wzmt.jsp">什么是小米团</a>
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
								<a href="aboutus.jsp">关于小米团</a>
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
						<span>2010</span>&nbsp;小米团(now6.cn)版权所有&nbsp; 使用小米团前必读&nbsp;
						&nbsp;Powered by xiaomituan.com
						</a>
					</p>
				</div>
			</div>
		</div>--%>
		</div>
	</body>
</html>