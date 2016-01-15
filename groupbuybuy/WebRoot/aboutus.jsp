<%@ page language="java" import="java.util.*,org.cw.group.util.*" pageEncoding="gbk"%>
<%@ page import="org.cw.group.bean.*,org.cw.group.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>

		<meta http-equiv=content-type content="text/html; charset=gbk" />
		<title>沃团 - 精品团购每一天 |${city}购物|${city}团购|${city}打折</title>
		<meta name="description"
			content="精品团购每一天|${city}购物|${city}团购|${city}打折" />
		<meta name="keywords"
			content="沃团, ${city}, ${city}沃团，${city}购物，${city}团购，${city}打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="" rel="alternate"
			title="" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
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
					<!--  <div class="guides">
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


					</div>-->
				<%-- 	<div id="header-subscribe-body" class="subscribe">
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
						</ul>	<div class="line ">
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
											<lable id="citylist">关于沃团</lable>
										</h2>
									</div>
									<div class="sect">
										
							            <p>沃团网：每天团购一次，为消费者发现最值得信赖的商家，让消费者享受超低折扣的优质服务。每天多单团购，为商家找到最合适的消费者，给商家提供最大收益的互联网推广。</p>
							            <dl>
							                <dt>如果您是消费者：</dt>
							                <dd>
							                    <ul>
							                        <li>沃团每天帮您推荐多种优质的本地生活服务；</li>
							                        <li>沃团的推荐一定物超所值；</li>
							                        <li>沃团同时致力于帮您发现最好玩，最新鲜的生活方式；</li>
							                    </ul>
							                </dd>
							                <dt>如果您是商家：</dt>
							                <dd>
							                    <ul>
							                        <li>沃团有热爱尝试的消费者；</li>
							                        <li>沃团有保证效果的广告价值；</li>
							                        <li>沃团是您到达消费者的桥梁；</li>
							                    </ul>
							                </dd>
							            </dl>
							            <h2>联系我们</h2>
							            <dl>
							                <dt>市场合作</dt>
							                <dd>
							                    <ul>
							                        <li>如果您是媒体、渠道，想洽谈资源置换、市场合作，请联系：</li>
							                        <li class="indent">邮箱：marketing#meituan.com（请把#替换为@）</li>
							                        <li>如果您想在沃团网投放广告，请联系：</li>
							                        <li class="indent">邮箱：ad#meituan.com（请把#替换为@）</li>
							                    </ul>
							                </dd>
							                <dt>团购服务</dt>
							                <dd>
							                    <ul>
							                        <li>如果您是商家，希望在沃团网组织团购，请在线<a href="/feedback/seller">提交团购信息</a>。</li>
							                    </ul>
							                </dd>
							                <dt>用户帮助</dt>
							                <dd>
							                    <ul>
							                        <li>沃团网客服，客服电话：400-660-5335</li>
							                    </ul>
							                </dd>
							            </dl>
							            <p class="text-right">沃团网隶属于北京三快科技有限公司</p>

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
								<a href="">商务合作</a>
							</li>
							<li>
								<a href="">提供团购信息</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							公司信息
						</h3>
						<ul class="sub-list">
							<li>
								<a href="">关于沃团</a>
							</li>
							<li>
								<a href="">版权声明</a>
							</li>

							<li>
								<a href="">隐私声明</a>
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
