<%@ page language="java" import="java.util.*,org.cw.group.util.*" pageEncoding="gbk"%>
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
						<a href="http://localhost/mt/index.php" class="link"><img
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
						</div> -->
						 <a href="selectcity.jsp">切换城市</a>	
					
					</div>
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
							<a href="wzmtservlet?action=list&city=<%=city %>">玩转沃团</a>
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
					<%-- <div class="refer">
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
								
									<div class="head">
										<h2>
											<lable id="citylist">版权声明</lable>
										</h2>
									</div>
									<div class="sect">
										
							            <h4>法律声明</h4>
							            <p>沃团网提醒您：在您使用沃团网的各项服务前，请您务必仔细阅读并透彻理解本声明。如果您使用沃团网，您的使用行为将被视为对本声明全部内容的认可。</p>
							            <p>沃团网转载作品出于传递更多信息之目的，任何单位或个人认为沃团网网页内容可能涉嫌侵犯其合法权益，应该及时向沃团网提出书面权利通知，并提供身份证明、权属证明、具体链接（URL）及详细侵权情况证明。沃团网在收到上述法律文件后，将会依法尽快处理。</p>
							            <h4>版权声明</h4>
							            <p>沃团网拥有本网站内所有信息内容（包括但不限于文字、图片、软件、音频、视频）的版权。未经沃团网书面许可，不得转载或用于其它商业用途。</p>
							            <h4>隐私声明</h4>
							            <p>沃团网尊重并保护所有使用沃团网服务用户的个人隐私权。 您一旦注册成功，成为本站的合法用户，将得到一个用户名和密码。您需维护自己的账户和密码之安全。沃团网不会向任何无关第三方提供、出售、出租、分享或交易您的个人信息，除非事先得到您的许可。同时，由于沃团无法对非法或未经用户授权使用用户账号及密码之行为进行甄别，您需对专属之账号和密码项下所有行为和事件负责，沃团不承担任何责任。但若发现任何非法使用账户或存在安全漏洞的情况，应毫不迟疑地立即通告沃团，沃团将尽最大努力协助您阻止损害结果发生。</p>
							            <p>为服务用户的目的，沃团可能通过使用您的个人信息，向您提供您感兴趣的信息，包括但不限于向您发出产品和服务信息。</p>
							            <p>在如下情况下，沃团将依据您的个人意愿或法律的规定全部或部分的披露您的个人信息：</p>
							            <ol>
							                <li>经您事先同意，向第三方披露；</li>
							                <li>根据法律的有关规定，或行政、司法机构的要求，向第三方或者行政、司法机构披露；</li>
							                <li>如您出现违反中国有关法律、法规或者沃团网服务协议或相关规则的情况，需要向第三方披露；</li>
							                <li>为提供您所要求的产品和服务，而必须和第三方分享您的个人信息。</li>
							            </ol>
							            <h4>作弊检测</h4>
							            <p>若沃团网通过技术检测、人工抽检等手段有合理理由怀疑用户资料信息为错误、不实、失效或不完整，本网站有权暂停或终止用户的帐号，并拒绝现在或将来使用本站网站网络服务的全部或部分，同时保留追索用户不当得利返还的权利。</p>


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
