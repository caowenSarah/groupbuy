<%@ page language="java" import="java.util.*,org.cw.group.bean.*,org.cw.group.dao.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String username = (String) session.getAttribute("userName");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv=content-type content="text/html; charset=GBK;charset=GBK" />
		<title>���� - ��Ʒ�Ź�ÿһ��</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link href="" rel="alternate" title="���ĸ���" type="application/rss+xml" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"  media="screen" charset="GBK" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script type="text/javascript">var LOGINUID = 1;</script>
		<script src="images/index000.js" type="text/javascript"></script>
		<script type="text/javascript">
				var xmlRequest;
				function selectPlace(txt) {
					var place = document.getElementById("tihuanduixiang");
					var citys = document.getElementById("citys")
					var citylist = document.getElementById("citylist")
					var citylists = document.getElementById("citylists")
					place.innerText = txt;
					citys.innerText = txt;
					citylist.innerText = txt;
					citylists.innerText = txt;
					placeLayer.style.display = "none";
				}
				
				function open_win(proId) {
				
					var xmlHttp;
					try {
						xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
					} catch (e) {
						xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
					}
				
					xmlHttp.open("GET", "MyJsp.jsp?proId=" + proId, true);
					xmlHttp.send();
				
					xmlHttp.onreadystatechange = function() {
				
						if (xmlHttp.readyState == 4) {
				
							var data = xmlHttp.responseText;
				
							if (data) {
								alert("���ﳵ����Ӵ���Ʒ!!!!!!!");
							}else{
								document.getElementById("#deal-buy").submit();
							}
						}
					};
					
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
								src="images/logo0000.JPG" /> </a>
					</div>
<%-- 			<div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
								<c:choose>
								<c:when test="${city=='tianjin'}">
								���
								</c:when>
								<c:when test="${city=='beijing'}">
								���
								</c:when>
								<c:otherwise>
								���
								</c:otherwise>
							</c:choose>
							</h2>
						</div>
							<a href="selectcity.jsp">�л�����</a>
					</div> 
--%>
				<%-- 	<div id="header-subscribe-body" class="subscribe">
						<form action="http://192.168.2.197/mt/subscribe.php" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								��֪��
								<lable id="citys">
								
								</lable>
								������Ź���ʲô��
							</label>
							<input type="hidden" name="city_id" value="4" />
							<input id="header-subscribe-email" type="text"
								xtip="����Email������ÿ���Ź���Ϣ..." value="" class="f-text" name="email" />
							<input type="hidden" value="1" name="cityid" />
							<input type="submit" class="commit" value="����" />
						</form>
						<span><a class="sms"
							onclick="X.miscajax('sms','subscribe');">&raquo; ���Ŷ��ģ���ѣ�</a>&nbsp;
							<a class="sms" onclick=X.miscajax('sms', 'unsubscribe');;
>&raquo;
								ȡ���ֻ�����</a> </span>
					</div>--%>
					<ul class="nav cf">
						<li>
							<a href="produceservlet?action=selectcity">�����Ź�</a>
						</li>
						<%-- <li>
							<a href="produceservlet?action=listformer">�����Ź�</a>
						</li>--%>
						<li>
							<a href="wzmtservlet?action=list">��ת�Ź�</a>
						</li>
						<c:choose>
							<c:when test="${username!=null}">
								<a href="talkwithservlet?action=list">������</a>
							</c:when>
							<c:otherwise>
								<a href="login.jsp">������</a>
							</c:otherwise>
						</c:choose>
					</ul>
				<%-- 	<div class="refer">
						&raquo;&nbsp;
						<a href="">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="verify-coupon-id" href="">�Ż�ȯ��֤�����ѵǼ�</a>
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
								<a href="login.jsp">�˳�</a>
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
						<%
							userDao dao = new userDao();
							User u = dao.query(username);
						%>
						<input id="deal-per-number" value="" type="hidden" />
					<form action = "orderitemservlet?action=insert&userName=${userName }" method="post">
<%--					<form action="order/yourdingdan.jsp ">		 
					<input type="hidden" name="userName" value="${userName }"></input>--%>
						<div id="deal-buy" class="box">    
							<div class="box-top"></div>
							<div class="box-content">
								<div class="head">
									<h2>
										�ύ����
									</h2>
								</div>

								<div class="sect">
									<table class="order-table" width="469" height="248">
										<tr>
											<th class="deal-buy-desc">
												��Ʒ
											</th>
											<th class="deal-buy-quantity">
												����
											</th>
											<th class="deal-buy-multi"></th>
											<th class="deal-buy-price">
												�۸�
											</th>
											<th class="deal-buy-equal"></th>
											<th class="deal-buy-total">
												�ܼ�
											</th>
										</tr>
										<tr>
											<td class="deal-buy-desc">
												${produce.proTitle}
											</td>
											<td class="deal-buy-quantity">
												<input type="text" class="input-text f-input" maxlength="4"
													name="dnumber" value="1" id="deal-buy-quantity-input">
												</input>
												<br />
											<span style="font-size: 12px; color: gray;"></span>	
											</td>
											<td class="deal-buy-multi">
												x
											</td>
											<c:choose>
												<c:when test="${proNumInOrder<produce.proLowAmount}">
													<td class="deal-buy-price">
														<span class="money"></span><span id="deal-buy-price">${produce.proMprice}</span>
													</td>													
												</c:when>
												<c:otherwise>
													<td class="deal-buy-price">
														<span class="money"></span><span id="deal-buy-price">${produce.proTprice}</span>
													</td>
												</c:otherwise>
											</c:choose>
											
											<td class="deal-buy-equal">
												=
											</td>
											<c:choose>
												<c:when test="${proNumInOrder<produce.proLowAmount}">
													<td class="deal-buy-total">
														<span class="money"></span><span id="deal-buy-total">${produce.proMprice}</span>
													</td>
												</c:when>
												<c:otherwise>
													<td class="deal-buy-total">
														<span class="money"></span><span id="deal-buy-total">${produce.proTprice}</span>
													</td>												
												</c:otherwise>
											</c:choose>
											
										</tr>

										<tr class="order-total">
											<td class="deal-buy-desc">
												<strong>�����ܶ</strong>
											</td>
											<td class="deal-buy-quantity"></td>
											<td class="deal-buy-multi"></td>
											<td class="deal-buy-price"></td>
											<td class="deal-buy-equal">
												=
											</td>
											<c:choose>
												<c:when test="${proNumInOrder<produce.proLowAmount}">
													<td class="deal-buy-total">
														<span class="money"></span><strong id="deal-buy-total-t">${produce.proMprice}</strong>
													</td>
												</c:when>
												<c:otherwise>
													<td class="deal-buy-total">
														<span class="money"></span><strong id="deal-buy-total-t">${produce.proTprice}</strong>
													</td>												
												</c:otherwise>
											</c:choose>
										</tr>
									</table>
									<div class="field mobile">
										<p>
											�Ź��ɹ������ŻὫ�Ź�ƾ֤��֤�뷢�͵������ֻ���������ȥ�̼����ѣ�
										</p>
									</div>
<%--									
									<input id="deal-buy-cardcode" type="hidden" name="cardcode"
										maxlength="8" value="" />
 --%>										
									<input type="hidden" name="proId" value="${produce.proId}" />
									<div class="form-submit">
<%-- 
										 <input type="button" class="formbutton" name="buy"
											value="ȷ�����󣬹���" onclick="open_win(${produce.proId})" />
											<a href="order/yourdingdan.jsp?proId=${produce.proId} " onclick="open_win(${produce.proId})" >ȷ�����󣬹���</a>
--%>
										<input type="submit" name="submit" value="ȷ�����󣬹���"  onclick="open_win(${produce.proId})"/>
									</div>
								</div>
							</div>
							<div class="box-bottom"></div>
						</div>      
				</form> 
					</div>
					<div id="sidebar">
						<div class="sbox">
							<div class="sbox-top"></div>
							<div class="sbox-content">
								<%-- <div class="credit">

									<h2>
										�ʻ����
									</h2>
									<p>
										�����ʻ���
										<span class="money">��</span><%=u.getUserAccount()%>
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
</html>