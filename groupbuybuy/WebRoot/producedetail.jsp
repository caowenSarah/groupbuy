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
		<title>�����Ź� | ���� - ��Ʒ�Ź�ÿһ�� |${city}����|${city}�Ź�|${city}����</title>
		<meta name="description" content="��Ʒ�Ź�ÿһ��|${city}����|${city}�Ź�|${city}����" />
		<meta name="keywords"
			content="����, ${city}, ${city}���ţ�${city}���${city}�Ź���${city}���ۣ��Ź������ۣ���Ʒ���ѣ�����ָ�ϣ�����ָ��" />
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="http://localhost/mt/feed.php?ename=jinan" rel="alternate"
			title="���ĸ���" type="application/rss+xml" />
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
								���
							<%}else if(city.equals("beijing")){%>
								����
							<%}else{%>
								���
							<%} %>
								
							</h2>
						</div>
						 <a href="selectcity.jsp">�л�����</a>	
					
					</div>
--%>				
				<%-- 	<div id="header-subscribe-body" class="subscribe">
						<form action="http://localhost/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪��������Ź���ʲô��
							</label>
							<input type="hidden" name="city_id" value="4" />
							<input id="header-subscribe-email" type="text"
								xtip="����Email������ÿ���Ź���Ϣ..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="����" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; ���Ŷ��ģ���ѣ�</a>&nbsp;
							<a class="sms" onclick="X.miscajax('sms','unsubscribe');">&raquo;
								ȡ���ֻ�����</a>
						</span>
					</div>--%>
					<ul class="nav cf">
						<li>
							<a href="produceservlet?action=selectcity">�����Ź�</a>
						</li>
						 <li>
							<a href="produceservlet?action=listformer">�����Ź�</a>
						</li>
						<li>
							<a href="wzmtservlet?action=list">��ת����</a>
						</li>
						<c:choose>
							<c:when test="${userName!=null}">
								<a href="talkwithservlet?action=list">������</a>
							</c:when>
							<c:otherwise>
								<a href="login.jsp">������</a>
							</c:otherwise>
						</c:choose>
					</ul>
					<%-- <div class="refer">
						&raquo;&nbsp;
						<a href="http://192.168.2.80/mt/subscribe.php">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="http://192.168.2.80/mt/account/invite.php">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="javascript:;">�Ż�ȯ��֤�����ѵǼ�</a>
					</div>--%>
					<div class="logins">
						<ul id="account">
							<%
								String userName = (String) session.getAttribute("userName");
								if (userName == null) {
							%>
							<li class="login">
								<a href="regedit.html">ע��</a>
							</li>
							<li class="login">
								<a href="login.jsp">��¼</a>
							</li>
							<%
								} else {
							%>
							<li class="logout">
								<a href=""><%=userName%></a>
							</li>
							
							<li class="account">
								<a href="orderitemservlet?action=queryByUser&username=<%=userName%>" id="myaccount" class="account">�ҵ��Ź�</a>
							</li>
							<li class="login">
								<a href="logout.jsp" onclick="session.invalidate();">�˳�</a>
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
							class="close">�ر�</a>
					</div>
					<div id="deal-default">
						<div id="content">


							<div id="deal-intro" class="cf">
								<div class="no">
									${produce.proId}

								</div>
								<h1>
									<a class="deal-today-link" href="index.jsp">�����Ź���</a><a
										href="">${produce.proTitle}</a>
								</h1>
								<div class="main">
									<div class="deal-buy">
										<div class="deal-price-tag">
										</div>
										<p class="deal-price">
											<strong>�Ź���${produce.proTprice}</strong>
											<span><a
												href="produceservlet?action=query1&proId=${produce.proId}&userName=${userName}"><img
														src="images/button-d.gif" /> </a> </span>
										</p>
									</div>
									<table class="deal-discount">
										<tr>
											<th>
												ԭ��
											</th>
											<th>
												�ۺ��
											</th>
											<th>
												��ʡ
											</th>
										</tr>
										<tr>
											<td>
												��${produce.proMprice}
											</td>
											<td>
												${produce.proTprice}
											</td>
											<td>
												��${produce.proMprice-produce.proTprice}
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
											<strong>${produce.proBuyAmount}</strong> ���ѹ���
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
                                             	 ����${produce.proLowAmount-proNumInOrder}�˴ﵽ����Ź���Ʒ����                                                                         
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
												��������
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
														<strong>����ܰ��ʾ��</strong>��
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															${produce.proPrompt}
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															ÿ�˿ɹ����ݣ�����д��ϸ������Ϣ��
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															�����ۼ۲���10Ԫ���ʲ�֧�����뷵����
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															��֧��7��δ�����˿
														</li>
													</ul>
													<p
														style="margin-top: 5px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 3px; padding-right: 6px; padding-bottom: 3px; padding-left: 6px; color: rgb(255, 255, 255); background-color: rgb(255, 0, 0); border-top-left-radius: 3px 3px; border-top-right-radius: 3px 3px; border-bottom-right-radius: 3px 3px; border-bottom-left-radius: 3px 3px;">
														<strong>����˵��</strong>
													</p>
													<ul class="list"
														style="margin-top: 10px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 15px;">
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															���ͷ�Χ�������Ź�����������ͨ��Բͨ���Ϊ��������
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															Ʒ�ʱ�֤���̼ұ�֤���۾�Ϊ��Ʒ������ǰ����ϸ�˽��Ʒ���Ժ�ʹ�÷������������ʣ����µ��̼ҿͷ���022-57111757����ѯ��
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															����˵����ÿ����Ҫ֧����ݷ���8Ԫ��
														</li>
														<li
															style="margin-top: 0px; margin-right: 0px; margin-bottom: 5px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: disc; list-style-position: outside; list-style-image: initial;">
															���ǩ�գ��뱾�˵�����ϸ������գ�����Ʒ����������������ȱʧ����Ʒ��������⣬�뵱����������Ա��������գ��̼һᾡ��Ϊ�����ŵ�����ǩ�պ��緢���������⣬���ṩ�˻���
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
														href="collectionservlet?action=insert&proId=${produce.proId}&userName=<%=userName%>&city=${city}">�����ҵ��ղ�</a>
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
														id="deal-subscribe-form-email" xtip="���������Email..."
														value="" />
												</td>
												<td>
													<input type="hidden" name="city_id" value="4" />
													<input type="image" src="images/button-s.gif" value="����" />
												</td>
											</tr>
										</table>
									</form>
									<p class="text">
										ÿ�춼���¾�ϲ��
										<br />
										���ǻ��ʼ�֪ͨ����
										<br />
										<span class="required">*</span> �˷��������ʱȡ��
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
							�û�����
						</h3>
						<ul class="sub-list">
							<li>
								<a href="wzmt.jsp">��ת����</a>
							</li>
							<li>
								<a href="wzmt.jsp">��������</a>
							</li>
							<li>
								<a href="wzmt.jsp">ʲô������</a>
							</li>

						</ul>
					</li>
					<li class="col">
						<h3>
							��ȡ����
						</h3>
						<ul class="sub-list">
							<li>
								<a href="">�ʼ�����</a>
							</li>
							<li>
								<a href="">RSS����</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							��������ϵ
						</h3>
						<ul class="sub-list">
							<li>
								<a href="aboutus.jsp">�������</a>
							</li>
							<li>
								<a href="givegroupinfor.jsp">�ṩ�Ź���Ϣ</a>
							</li>
						</ul>
					</li>
					<li class="col">
						<h3>
							��˾��Ϣ
						</h3>
						<ul class="sub-list">
							<li>
								<a href="aboutus.jsp">��������</a>
							</li>
							<li>
								<a href="copyrightstatement.jsp">��Ȩ����</a>
							</li>

							<li>
								<a href="privacystatement.jsp">��˽����</a>
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
						<span>2010</span>&nbsp;����(now6.cn)��Ȩ����&nbsp; ʹ������ǰ�ض�&nbsp;
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
 document.getElementById("times").innerHTML=__d+"�� "+__h+"Сʱ"+__m+"��"+__s+"��";
 if(leftsecond<=0){
 document.getElementById("times").innerHTML="�����ѽ���";
 clearInterval(sh);
 }
}
_fresh()
var sh;
sh=setInterval(_fresh,1000);
</script>--%>
</html>