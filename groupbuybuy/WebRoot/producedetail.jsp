<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="org.cw.group.bean.*,org.cw.group.dao.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
	 
		<meta http-equiv=content-type
			content="text/html; charset=GBK" />
		<title>近期团购 | 沃团 - 精品团购每一天 |${city}购物|${city}团购|${city}打折</title>
		<meta name="description" content="精品团购每一天|${city}购物|${city}团购|${city}打折" />
		<meta name="keywords"
			content="沃团, ${city}, ${city}沃团，${city}购物，${city}团购，${city}打折，团购，打折，精品消费，购物指南，消费指南" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
			title="订阅更新" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="GBK" />
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
<%--						 
					 <div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
						
							<%String city=request.getParameter("city");
							if(city.equals("tianjin")) {%>
								天津
							<%}else if(city.equals("beijing")){%>
								北京
							<%}else{%>
								天津
							<%} %>
								
							</h2>
						</div>
						 <a href="selectcity.jsp">切换城市</a>	
					
					</div>
--%>				
				<%-- 	<div id="header-subscribe-body" class="subscribe">
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
							<a href="produceservlet?action=selectcity">今日团购</a>
						</li>
						 <li>
							<a href="produceservlet?action=listformer">往期团购</a>
						</li>
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
			
			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="sysmsg-guide">
						<div class="link">
							<a href="http://192.168.2.49/mt/help/tour.php"></a>
						</div>
						<a id="sysmsg-guide-close" href="javascript:close();"
							class="close">关闭</a>
					</div>
					<div id="deal-default">
						<div id="content">


							<div id="deal-intro" class="cf">
								<div class="no">
									${produce.proId}

								</div>
								<h1>
									<a class="deal-today-link" href="index.jsp">今日团购：</a><a
										href="">${produce.proTitle}</a>
								</h1>
								<div class="main">
									<div class="deal-buy">
										<div class="deal-price-tag">
										</div>
										<p class="deal-price">
											<strong>团购价${produce.proTprice}</strong>
											<span><a
												href="produceservlet?action=query1&proId=${produce.proId}&userName=${userName}"><img
														src="images/button-d.gif" /> </a> </span>
										</p>
									</div>
									<table class="deal-discount">
										<tr>
											<th>
												原价
											</th>
											<th>
												折后价
											</th>
											<th>
												节省
											</th>
										</tr>
										<tr>
											<td>
												￥${produce.proMprice}
											</td>
											<td>
												${produce.proTprice}
											</td>
											<td>
												￥${produce.proMprice-produce.proTprice}
											</td>
										</tr>
									</table>
									<div class="deal-box deal-timeleft deal-on"
										id="deal-timeleft-1" curtime="1303196134000"
										diff-1="124362266000">
										<h3>
											
							
										</h3>
										<div class="limitdate" id="ssss">
											<ul id="counter-1">

												<p>
													<span id="times" class="times" ></span>
												</p>

											</ul>
										</div>
									</div>
									<div class="deal-box deal-status" id="deal-status">
										<%-- <p class="deal-buy-tip-top">
											<strong>${produce.proBuyAmount}</strong> 人已购买
										</p>--%>

										<div class="progress-pointer" style="padding-left: 129px;">
											<span></span>
										</div>
										<div class="progress-bar">
											<div class="progress-left" style="width: 129px;">
											</div>
											<div class="progress-right ">
											</div>
										</div>
										<div class="cf">
											<div class="min">
												${produce.proLowAmount}
											</div>
											<div class="max">
												${produce.proHighAmount}
											</div>
										</div>
										<c:set var="buyamount" value='${produce.proBuyAmount}' />
										<c:set var="lowamount" value='${produce.proLowAmount}' />
										<c:set var="highamount" value='${produce.proHighAmount}' />

									 	<c:choose>
											<c:when test="${proNumInOrder<lowamount}">
                                             	 还差${produce.proLowAmount-proNumInOrder}人达到最低团购商品件数                                                                         
                                            </c:when>
											<c:otherwise>
                                                                                                                             
                                            </c:otherwise>
										</c:choose>

										


									</div>
								</div>

								<div class="side">
									<div class="deal-buy-cover-img" id="team_images">
										<a href=""><img src="images/${produce.proImg2}"
												width="440" height="280" border="0" /> </a>
									</div>
									<div class="digest">
										<br />
										${produce.proIndent}
									</div>
								</div>

								<br />
							</div>


							<div id="deal-stuff" class="cf">
								<div class="clear box box-split">

									<div class="box-content cf">
										<div class="main">
											<h2 id="detail">
												本单详情
											</h2>
											<div class="blk detail">
												<span
													style="font-family: Tahoma, Helvetica, arial, sans-serif; white-space: normal; font-size: 14px; line-height: 21px;"></span>
												<div class="blk detail"
													style="margin-top: 7px; margin-right: 0px; margin-bottom: 30px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
													<p
														style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 3px; padding-right: 6px; padding-bottom: 3px; padding-left: 6px; color: rgb(255, 255, 255); background-color: rgb(255, 0, 0); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px;">
														<strong>${produce.proIntroduce}</strong>
													</p>

													<ul class="list"
														style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 15px;">
														<strong>【温馨提示】</strong>：
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															${produce.proPrompt}
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															每人可购买多份，请填写详细配送信息；
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															本单售价不足10元，故不支持邀请返利；
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															不支持7天未消费退款。
														</li>
													</ul>
													<p
														style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 3px; padding-right: 6px; padding-bottom: 3px; padding-left: 6px; color: rgb(255, 255, 255); background-color: rgb(255, 0, 0); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px;">
														<strong>配送说明</strong>
													</p>
													<ul class="list"
														style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 15px;">
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															配送范围：本次团购限天津地区，通过圆通快递为您发货；
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															品质保证：商家保证所售均为正品。购买前请详细了解产品特性和使用方法，如有疑问，可致电商家客服（022-57111757）咨询；
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															邮资说明：每单需要支付快递费用8元；
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															快件签收：请本人当场仔细检查验收，如商品存在配送有误、数量缺失、产品破损等问题，请当面向配送人员提出并拒收，商家会尽快为您安排调换。签收后如发现上述问题，不提供退换。
														</li>
													</ul>
													<div
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: center;">
														<img src="images/${produce.proImg1}"
															style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial;"
															alt="" />
													</div>

													<div
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: center;">
														<img src="images/${produce.proImg2}"
															style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial;"
															alt="" />
													</div>

													<div
														style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; text-align: center;">
														<img src="images/${produce.proImg3}"
															style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial;"
															alt="" />
													</div>
												</div>
											</div>


											<h2 id="systemreview">
												
											</h2>
											<div class="blk review">
												<span
													style="font-family: Tahoma, Helvetica, arial, sans-serif; white-space: normal; font-size: 14px; line-height: 21px;"></span>
												<p
													style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
													
												</p>
												<p
													style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
													
												</p>
												<p
													style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;">
													
												</p>
											</div>
										</div>
										<div class="side">
											<div id="side-business">
												<h2>
													${produce.proProducer}
												</h2>
												
												<div style="margin-top: 10px;">
													<a
														href="collectionservlet?action=insert&proId=${produce.proId}&userName=<%=userName%>&city=${city}">加入我的收藏</a>
												</div>
											</div>
										</div>

									</div>

								</div>
							</div>
						</div>




						<%-- <div id="sidebar">
							<div class="deal-subscribe">
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
		<script src="images/show0000.htm" type="text/javascript">

</script>
		<!--script type="text/javascript">
        showtime(3);
        </script-->
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

 <%-- <script language="JavaScript">
function _fresh()
{
 var endtime=new Date('${endTime}');
 var nowtime = new Date();
 var leftsecond=parseInt((endtime.getTime()-nowtime.getTime())/1000);
 __d=parseInt(leftsecond/3600/24);
 __h=parseInt((leftsecond/3600)%24);
 __m=parseInt((leftsecond/60)%60);
 __s=parseInt(leftsecond%60);
 document.getElementById("times").innerHTML=__d+"天 "+__h+"小时"+__m+"分"+__s+"秒";
 if(leftsecond<=0){
 document.getElementById("times").innerHTML="抢购已结束";
 clearInterval(sh);
 }
}
_fresh()
var sh;
sh=setInterval(_fresh,1000);
</script>--%>
</html>