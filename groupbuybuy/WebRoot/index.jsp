<%@ page language="java" import="java.util.*,org.cw.group.bean.*,org.cw.group.dao.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
	  
		<meta http-equiv=content-type content="text/html; charset=GBK;charset=GBK" />
		<title>�����Ź� | ���� - ��Ʒ�Ź�ÿһ�� </title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
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
						<a href="" class="link"><img src="images/logo0000.JPG" /> </a>
					</div>
<%--
				  	<div class="guides">
						<div class="city">
							<h2 id="tihuanduixiang">
								<c:choose>
								<c:when test="${city=='tianjin'}">
								���
								</c:when>
								<c:when test="${city=='beijing'}">
								����
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
<%--
					 <div id="header-subscribe-body" class="subscribe">
						<form action="" method="post"
							id="header-subscribe-form">
							<label for="header-subscribe-email" class="text">
								
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
					</div>
--%>
					<ul class="nav cf">
					<%String userName = (String) session.getAttribute("userName"); %>
						<li>
							<a href="produceservlet?action=selectcity&city=${city}">�����Ź�</a>
						</li>
						<%-- <li>
							<a href="produceservlet?action=listformer">�����Ź�</a>
						</li>--%>
						<li>
							<a href=wzmtservlet?action=list>��ת����</a>
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
						<a href="">�ʼ�����</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a href="">�������</a>&nbsp;&nbsp;&nbsp;&raquo;&nbsp;
						<a id="" href="">�Ż�ȯ��֤�����ѵǼ�</a>
					</div>--%>
					<div class="logins">
						<ul id="account">
							<%
								if (userName == null) {
							%>
							<li class="login">
								<a href="regedit.jsp">ע��</a>
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
			
				</div>
			</div>


			<div id="bdw" class="bdw">  
			
				<div id="bd" class="cf">
				<div id="sysmsg-guide">
						<div class="link">
							<a href=""></a>
						</div>
						<a id="sysmsg-guide-close" href="javascript:close();"
							class="close">�ر�</a>
					</div>
					<div id="recent-deals">
						<div id="content">
							<div class="box">
								<div class="box-top"></div>
								<div class="box-content">
								
									<div class="head">
<!-- 									
										<h2>
											<lable id="citylist">
												<c:choose>
													<c:when test="${city=='haerbin'}">
													���
													</c:when>
													<c:when test="${city=='beijing'}">
													���
													</c:when>
													<c:otherwise>
													���
													</c:otherwise>
												</c:choose>
											</lable>�����Ź�
										</h2>
 -->										
									</div>
									<div class="sect">
									<%
									 	produceDao dao=new produceDao();
									 	//String datetime=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
									 	//String sql="select count(pro_id) as rn from produce where pro_endtime <'"+datetime+"'";
								//		+"' and pro_city='"+city+"'";
										//Page page = new Page(2,sql);
										//System.out.println(sql);
										//page.setPageCurrent(request.getParameter("pageCurrent"));
										//List<Produce> list = dao.listformer(page, city);
										int showPage=1;
										List<Produce> list=dao.listtoday("tianjin","");
										for(Produce p:list){
									 %>
										
											<ul class="deals-list">
												<li class=" first">
													<p class="time">
														
														<%=p.getProEndTime() %>
													</p>
													<div style="height: 50px; overflow: hidden">
														<h4>
															<a href="produceservlet?action=query&proId=<%=p.getProId()%>" target="_blank"><%=p.getProTitle()%></a>
														</h4>
													</div>
													<div class="pic">
														<div class="isopen"></div>
														<a target="_blank" href="produceservlet?action=query&proId=<%=p.getProId()%>">
															<img alt="<%=p.getProTitle() %>" src="images/<%=p.getProImg2() %>"width="200" height="121"/>
														</a>
													</div>
													<div class="info">
														<p class="total">
															<strong class="count">
<%--															<%=p.getProBuyAmount() %></strong>�˹���   --%>
														</p>
														<p class="price">
															ԭ�ۣ�
															<strong class="old"><span class="money">��</span><%=p.getProMprice() %></strong>
															<br />
															�ۿۣ�
															<strong class="discount"><%=Math.ceil(p.getProTprice()/p.getProMprice()*10)%></strong>
															<br />
															�ּۣ�
															<strong><span class="money">��</span><%=p.getProTprice() %></strong>
															<br />
															<strong><span><a target="_blank" rel="nofollow" href="produceservlet?action=query1&proId=<%=p.getProId()%>&city=tianjin">����</a>	</span></strong>
															<br />
															
														</p>
													</div>
												</li>
											</ul>
										<%} %>
										<div class="clear"></div>
<%--										
										<div>
											<ul class="paginator">
												<li class="current">
												    <a href="produceservlet?action=listformer&pageCurrent=1">[��ҳ]</a>
												   
												    <a href="userservlet?action=queryuser&pageCurrent=<%=showPage<=1?1:showPage-1 %>">[��һҳ]</a>
												    <a href="userservlet?action=queryuser&pageCurrent=<%=showPage>pagea.getPageCount()?pagea.getPageCount():showPage+1%>">[��һҳ]</a>
													<a href="userservlet?action=queryuser&pageCurrent=<%=pagea.getPageCount()%>">[βҳ]</a>
												</li>
											</ul>
										</div>
 --%>										
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>
						<div id="sidebar">
							<div class="deal-subscribe">
								<div class="top"></div>
								<%-- <div class="body" id="deal-subscribe-body">
									<form id="deal-subscribe-form" method="post"
										action="">
										<table class="address">
											<tr>
												<td>
													<input type="text" name="email" class="f-text"
														id="deal-subscribe-form-email" xtip="���������Email..."
														value="" readonly/>
												</td>
												<td>
													<input type="hidden" name="city_id" value="4" readonly/>
													<input type="image" src="images/button-s.gif" value="����" readonly/>
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
								</div>--%>
								<div class="bottom"></div>
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
								<a href="givegroupinfor.jsp?city=tianjin">�ṩ�Ź���Ϣ</a>
							</li>
							<li>
								<a href="login.jsp">�����̨</a>
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
		</div>
		</div>--%>
	</body>
</html>