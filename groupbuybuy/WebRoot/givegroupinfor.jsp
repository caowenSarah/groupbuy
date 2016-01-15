<%@ page language="java" import="java.util.*,org.cw.group.util.*"
	pageEncoding="gbk"%>
<%@ page import="org.cw.group.bean.*,org.cw.group.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
	 
		<meta http-equiv=content-type
			content="text/html; charset=gbk" />
		<title>近期团购 | 沃团 - 精品团购每一天 |${city}购物|${city}团购|${city}打折</title>
		<meta name="description" content="精品团购每一天|${city}购物|${city}团购|${city}打折" />
		<meta name="keywords"
			content="沃团, ${city}, ${city}沃团，${city}购物，${city}团购，${city}打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
			title="订阅更新" type="application/rss+xml" />
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
								哈尔滨
							<%}else if(city.equals("beijing")){%>
								北京
							<%}else{%>
								哈尔滨
							<%} %>
								
							</h2>
						</div>
						 <a href="selectcity.jsp">切换城市</a>	
					
					</div> -->
					<%-- <div id="header-subscribe-body" class="subscribe">
						<form action="http://localhost/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								想知道明天的团购是什么吗？
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
						<li>
							<a href="produceservlet?action=selectcity&city=<%=city %>">今日团购</a>
						</li>
						<li>
							<a href="produceservlet?action=listformer&city=<%=city %>">往期团购</a>
						</li>
						<li>
							<a href="wzmtservlet?action=list&city=<%=city %>">玩转美团</a>
						</li>
						<c:choose>
							<c:when test="${userName!=null}">
								<a href="talkwithservlet?action=list&city=<%=city %>">讨论区</a>
							</c:when>
							<c:otherwise>
								<a href="login.jsp">讨论区</a>
							</c:otherwise>
						</c:choose>
					</ul>
				<%-- 	<div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.80/mt/subscribe.php">邮件订阅</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.80/mt/account/invite.php">邀请好友</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
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
											提供团购信息
										</h2>
									</div>
									<form id="feedback-form" method="post"
										action="giveinforservlet?action=insert&city=<%=city %>">
										<p class="notice">
											如果您是商家、网上商城，想在沃团网组织团购，请填写：
										</p>

										<div class="field">
											<label for="fullname">
												您的称呼
											</label>
											<input name="name" data-tips="请填写您的称呼" id="fullname"
												class="f-text" value="" />
											<span class="hint">必须填写</span>
										</div>
										<div class="field">
											<label for="number">
												您的电话
											</label>
											<input name="mobile" data-tips="请填写您的电话" id="number"
												class="f-text" value="" />
											<span class="hint">必须填写</span>
										</div>
										<div class="field">
											<label for="contacts">
												其他联系方式
											</label>
											<input name="contact" id="contacts" class="f-text" value="" />
											<span class="hint">请留下您的手机、QQ号或邮箱，方便联系</span>
										</div>
										<div class="field">
											<label for="feedback-city">
												城市
											</label>

											<span class="province-city-select">
												<select name="province">
													<option value="-1">
														--城市--
													</option>
													<option value="北京">
														北京
													</option>
													<option value="天津">
														天津
													</option>
													<option value="河北">
														河北
													</option>
													<option value="山西">
														山西
													</option>
													<option value="内蒙古">
														内蒙古
													</option>
													<option value="辽宁">
														辽宁
													</option>
													<option value="吉林">
														吉林
													</option>
													<option value="黑龙江">
														黑龙江
													</option>
													<option value="上海">
														上海
													</option>
												</select> </span>
										</div>
										<div class="field">
											<label for="feedback-bizname">
												团购商家名称
											</label>
											<input name="bizname" data-tips="请填写团购商家名称"
												id="feedback-bizname" class="f-text" value="" />
											<span class="hint">必须填写</span>
										</div>
										<div class="field">
											<label for="category">
												团购类型
											</label>
											<select name="type" id="category" class="f-select">
												<option value="1">
													餐馆美食
												</option>
												<option value="2">
													休闲娱乐
												</option>
												<option value="3">
													丽人
												</option>
												<option value="4">
													健康保健
												</option>
												<option value="5">
													运动健身
												</option>
												<option value="6">
													电商网店
												</option>
												<option value="0">
													其它
												</option>
											</select>
										</div>
										<div class="field cf">
											<label for="suggest">
												团购内容
											</label>
											<textarea name="content" data-tips="团购内容不能为空" id="suggest"
												class="f-textarea"></textarea>
										</div>
										<div class="act">
											<input type="submit" value="提交" class="formbutton" />
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
		</div> --%>
		</div>
	</body>
</html>

