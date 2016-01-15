<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	
		<meta http-equiv=content-type content="text/html; charset=gbk"/>
		<title>���� - �����̨</title>
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
		<style>
body,h2 {
	margin: 0;
	padding: 0;
}

#DialogDiv TABLE {
	border-collapse: collapse;
}

#BgDiv {
	background-color: #e3e3e3;
	position: absolute;
	z-index: 99;
	left: 0;
	top: 0;
	display: none;
	width: 100%;
	height: 1000px;
	opacity: 0.5;
	filter: alpha(opacity =50);
	-moz-opacity: 0.5;
}

#DialogDiv {
	position: absolute;
	width: 400px;
	left: 50%;
	top: 50%;
	margin-left: -200px;
	margin-top: -100px;
	height: auto;
	z-index: 100;
	background-color: #99CCCC;
	border: 1px #8FA4F5 solid;
	padding: 1px;
}

#DialogDiv h2 {
	height: 25px;
	font-size: 15px;
	background-color: #8FA4F5;
	position: relative;
	padding-left: 10px;
	line-height: 25px;
}

#DialogDiv h2 a {
	position: absolute;
	right: 5px;
	font-size: 12px;
	color: #000000
}
</style>

		<link rel="shortcut icon" href="images/favicon0.ico" />
		<link rel="stylesheet" href="images/index000.css" type="text/css"
			media="screen" charset="gbk" />
		<script src="images/index000.js" type="text/javascript"></script>
		<script src="jquery1.4.js" type="text/javascript"></script>
		<script type="text/javascript">
		function closeMe(){
		var link = document.getElementById("DialogDiv");
			link.style.display="none";
		}
		function showMe(a,b,c,d,e,f,g,h){
		var link = document.getElementById("DialogDiv");
			link.style.display="block";
			$("#a").text(a);
			$("#b").text(b);
			$("#c").text(c);
			$("#d").text(d);
			$("#e").text(e);
			$("#f").text(f);
			$("#g").text(g);
			$("#h").text(h);
		}
	</script>

	</head>
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">
			<script type="text/javascript" src="images/xheditor.js"></script>
			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="http://192.168.2.49/mt/index.php" class="link"
							target="_blank"><img src="images/logo0000.JPG" /> </a>
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
						<li class="current">
							<a href="produceservlet?action=list&flag=3">�Ź�</a>
						</li>
						<li>
							<a href="orderitemservlet?action=list">����</a>
						</li>
						<li>
							<a href="userservlet?action=list">�û�</a>
						</li>
						<%-- <li>
							<a href="traderservlet?action=list">�̻�</a>
						</li>--%>
						<li class="login">
							 <a href="logout.jsp" onclick="session.invalidate();">�˳�</a>
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
									<a href="produceservlet?action=list&flag=3">��ǰ�Ź�</a><span></span>
								</li>
								 <li>
									<a href="produceservlet?action=list&flag=0">�ɹ��Ź�</a><span></span>
								</li>
								<li>
									<a href="produceservlet?action=list&flag=1">ʧ���Ź�</a><span></span>
								</li>
								<li>
									<a href="newTuangou.jsp">�½��Ź�</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="coupons-box clear mainwide">
							<div class="box clear">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											��ǰ�Ź�
										</h2>
									</div>
									<div class="sect">
										<table id="orders-list" cellspacing="0" cellpadding="0"
											border="0" class="coupons-table">
											<tr>
												<th width="40">
													ID
												</th>
												<th width="400">
													�Ź���Ŀ
												</th>
												<th width="80" nowrap>
													���
												</th>
												<th width="100">
													����
												</th>
												<th width="50">
													����
												</th>
												<th width="60" nowrap>
													�Ź���
												</th>
											<%-- 	<th width="140">
													����
												</th>--%>
											</tr>
											<c:forEach items="${requestScope.List}" var="d">
												<tr class="alt" id="team-list-id-1">
													<td>
														<a>${d.proId}</a>
													</td>
													<td>
														<a class="deal-title"
															href="http://192.168.2.49/mt/team.php?id=1"
															target="_blank">${d.proIntroduce}</a>
													</td>
													<td nowrap>
														<br />
														${d.proType}
													</td>
													<td nowrap>
														${d.proStartTime}
														<br />
														${d.proEndTime}
													</td>
													<td nowrap>
														${d.proCity}
													</td>

													<td nowrap>
														<span class="money">$</span>${d.proTprice}
													</td>
												 	<%-- <td class="op" nowrap>
														<a
															onclick="showMe('${d.proIntroduce}','${d.proType }','${d.proStartTime }','${d.proEndTime}',${d.proHighAmount},${d.proLowAmount},'${d.proTprice }','${d.proMprice}')">����</a>��
														
														<a href="produceservlet?action=delete&proId=${d.proId}" class="remove-record">ɾ��</a>
													</td>--%>
												</tr>
											</c:forEach>
											<tr>
												<td colspan="7">
													<ul class="paginator">
														<li class="current">
															1
														</li>
													</ul>
											</tr>
										</table>
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
		</div>
		</div>









		<div id="DialogDiv" style="display: none">
			<h2 id="bianji">
				�Ź�����
				<a href="javascript: closeMe( )">�ر�</a>
			</h2>
			<table width="400">
				<tr style="font-family: �����п�; font-size: 21">
					<td height="45">
						��Ŀ���ƣ�
					</td>
					<td id="a" colspan="2" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: �����п�; font-size: 21">
					<td height="45" style="font-family: �����п�; font-size: 21">
						��&nbsp;&nbsp;&nbsp;&nbsp;��
					</td>
					<td id="b" colspan="2" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: �����п�; font-size: 21">
					<td height="45" style="font-family: �����п�; font-size: 21">
						��Ŀʱ�䣺
					</td>
					<td height="45">
						��ʼ��
					</td>
					<td id="c" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: �����п�; font-size: 21">
					<td height="45">
						&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="45">
						������
					</td>
					<td id="d" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: �����п�; font-size: 21">
					<td height="45" style="font-family: �����п�; font-size: 21">
						�޹�������
					</td>
					<td height="45">
						���
					</td>
					<td id="e" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: �����п�; font-size: 21">
					<td height="45">
						&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="45">
						��С:
					</td>
					<td id="f" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: �����п�; font-size: 21">
					<td height="45">
						��Ŀ�۸�
					</td>
					<td height="45">
						�Ź���:
					</td>
					<td id="g" height="45" style="color: 99ff99"></td>
				</tr>
				<tr style="font-family: �����п�; font-size: 21">
					<td height="45">
						&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td height="45">
						�г��ۣ�
					</td>
					<td id="h" height="45" style="color: 99ff99"></td>
				</tr>
			</table>
		</div>--%>
	</body>

</html>