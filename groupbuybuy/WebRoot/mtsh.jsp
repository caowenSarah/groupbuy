<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" id="">
	<head>
		<meta http-equiv=content-type
			content="text/html; charset=gbk" />
		<title>���� - �����̨</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
		<script type="text/javascript">var WEB_ROOT = '/mt';</script>
		<script src="images/index000.js" type="text/javascript"></script>



	</head>
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">
			<script type="text/javascript" src="images/xheditor.js"></script>
			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://192.168.2.19/mt/index.php" class="link"
							target="_blank"><img src="images/logo0000.JPG" />
						</a>
					</div>
					<div class="guides">
						<div class="city">
							<h2>
								�����̨
							</h2>
						</div>
						<div id="guides-city-change" class="change"></div>
					</div>
					<ul class="nav cf">
						<li>
							<a href="bgindex.jsp">��ҳ</a>
						</li>
						<li>
							<a href="produceservlet?action=list&flag=3">�Ź�</a>
						</li>
						<li>
							<a href="orderitemservlet?action=list">����</a>
						</li>
						<li >
							<a href="userservlet?action=list">�û�</a>
						</li>
						
						<li class="current">
							<a href="traderservlet?action=list">�̻�</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="coupons">
						<div class="dashboard" id="dashboard">
							<ul>
								<li class="current">
									<a href="#">�̻��б�</a><span></span>
								</li>
								<li>
									<a href="xjsh.jsp">�½��̻�</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											�̻�
										</h2>
										<ul class="filter">
											<li>
												<form method="post" action="traderservlet?action=queryByCus">
													�̻����ƣ�
													<input type="text" name="customerName" class="h-input" value=""/>
													&nbsp;
													
													<input type="submit" value="ɸѡ" class="formbutton"
														style="padding: 1px 6px;" />
													</form>
											</li>
										</ul>
									</div>
									<div class="sect" id="shanghu" style="display: block">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="40">
													ID
												</th>
												<th width="320">
													����
												</th>
												<th width="120">
													��ϵ��
												</th>
												<th width="130">
													�绰����
												</th>
												<th width="100">
													����
												</th>
												<th width="80">
													����
												</th>
											</tr>

											<c:forEach items="${requestScope.list}" var="sh">

												<tr class="alt" id="team-list-id-2">
													<td>
														${sh.trId}
													</td>
													<td style="text-align: left;">
														${sh.customerName}
													</td>
													<td nowrap>
														${sh.trName}
													</td>
													<td nowrap>
														${sh.conTel}
														<br />
													</td>
													<td nowrap>
														${sh.trTime}
													</td>

													<td class="op" nowrap>
														<a href="traderservlet?action=update&id=${sh.trId}">�༭</a> ��
														<a href="traderservlet?action=delete&id=${sh.trId}"
															onclick="return confirm('�Ƿ�ɾ��?')">ɾ��</a>
													</td>
											</c:forEach>
											<tr>
												<td colspan="6">
													<ul class="paginator">
														<li class="current">
															1
														</li>
													</ul>
												</td>
											</tr>
										</table>
									</div>



									<div class="sect" id="shanghu1" style="display: none">
										<form id="login-user-form" method="post"
											action="newshanghu.do" class="validator">
											<div class="wholetip clear">
												<h3>
													1����¼��Ϣ
												</h3>
											</div>
											<div class="field">
												<label>
													�û���
												</label>
												<input type="text" size="30" name="name"
													id="partner-create-username" class="f-input" value=""
													require="true" datatype="require" />
											</div>
											<div class="field password">
												<label>
													��¼����
												</label>
												<input type="text" size="30" name="password"
													id="settings-password" class="f-input" require="true"
													datatype="require" />
											</div>

											<div class="wholetip clear">
												<h3>
													2��������Ϣ
												</h3>
											</div>
											<div class="field">
												<label>
													�̻�����
												</label>
												<input type="text" size="30" name="customerName"
													id="partner-create-title" class="f-input" value=""
													require="true" datatype="require" />
											</div>
											<div class="field">
												<label>
													��վ��ַ
												</label>
												<input type="text" size="30" name="interAdress"
													id="partner-create-homepage" class="f-input" value="" />
											</div>
											<div class="field">
												<label>
													��ϵ�绰
												</label>
												<input type="text" size="30" name="people"
													id="partner-create-contact" class="f-input" value="" />
											</div>

											<div class="field">
												<label>
													λ����Ϣ
												</label>
												<div style="float: left;">
													<textarea cols="45" rows="5" name="weizhiinfo"
														id="partner-create-location" class="f-textarea "></textarea>
												</div>
											</div>
											<div class="field">
												<label>
													������Ϣ
												</label>
												<div style="float: left;">
													<textarea cols="45" rows="5" name="qitainfo"
														id="partner-create-location" class="f-textarea "></textarea>
												</div>
											</div>
											<div class="wholetip clear">
												<h3>
													3��������Ϣ
												</h3>
											</div>
											<div class="field">
												<label>
													������
												</label>
												<input type="text" size="30" name="khBank"
													id="partner-create-bankname" class="f-input" value="" />
											</div>
											<div class="field">
												<label>
													������
												</label>
												<input type="text" size="30" name="khname"
													id="partner-create-bankuser" class="f-input" value="" />
											</div>
											<div class="field">
												<label>
													�����˻�
												</label>
												<input type="text" size="30" name="bankzf"
													id="partner-create-bankno" class="f-input" value="" />
											</div>
											<div class="act">
												<input type="submit" value="�½�" class="formbutton" />
											</div>
										</form>
									</div>


								</div>
								<div class="box-bottom"></div>
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
