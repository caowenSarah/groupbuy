<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv=content-type content="text/html; charset=gbk"/>
			<title>���� - �����̨</title>
			<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
			<link rel="shortcut icon" href="images/favicon0.ico" />
			<link rel="stylesheet" href="images/index000.css" type="text/css" media="screen" charset="gbk" />
			<script type="text/javascript">var WEB_ROOT = '/mt';</script>
			<script src="images/index000.js" type="text/javascript"></script>
			<link type="text/css" rel="stylesheet" href="css/calendar.css"/>
			<script type="text/javascript" src="js/calendar.js"></script>
			<script type="text/javascript" src="js/calendar-zh.js"></script>
			<script type="text/javascript" src="js/calendar-setup.js"></script>
	</head>
	<body class="newbie">
		<div id="pagemasker"></div>
		<div id="dialog"></div>
		<div id="doc">
			<script type="text/javascript" src="images/xheditor.js"></script>
			<div id="hdw">
				<div id="hd">
					<div id="logo">
						<a href="" class="link"
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
						<li >
							<a href="bgindex.jsp">��ҳ</a>
						</li>
						<li  class="current">
							<a href="produceservlet?action=list&flag=3">�Ź�</a>
						</li>
						<li>
							<a href="orderitemservlet?action=list">����</a>
						</li>
						<li>
							<a href="userservlet?action=list">�û�</a>
						</li>
						
					<%-- 	<li>
							<a href="traderservlet?action=list">�̻�</a>
						</li>--%>

					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="leader">
						<div class="dashboard" id="dashboard">
							<ul>
							<%--	<li>
									<a href="produceservlet?action=list&flag=3">��ǰ�Ź�</a><span></span>
								</li>
								<li>
									<a href="produceservlet?action=list&flag=0">�ɹ��Ź�</a><span></span>
								</li>
								<li>
									<a href="produceservlet?action=list&flag=1">ʧ���Ź�</a><span></span>
								</li> --%>
								<li class="current">
									<a href="">�½��Ź�</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="clear mainwide">
							<div class="clear box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											�½�ϵͳ�Ź�
										</h2>
									</div>
									<div class="sect">
										<form id="login-user-form" method="post" class="validator"
											action="produceservlet?action=insert" >
											<div class="wholetip clear">
												<h3>
													1��������Ϣ
												</h3>
											</div>
											<div class="field">
												<label>
													����
												</label>
<%--												
												<select name="proCity" class="f-input" style="width: 160px;">
													<option value="changsha" selected disabled='true'>
														���
													</option>
												</select>
 --%>												

												<select name="proType" class="f-input"
													style="width: 160px;">
													<option value='��������'>
														��������
													</option>
													<option value='�������'>
														�������
													</option>
													<option value='����'>
														����
													</option>
													<option value='��������'>
														��������
													</option>
													
													<option value='��Ʒ����'>
														��Ʒ����
													</option>
													<option value='������ʳ'>
														������ʳ
													</option>
												</select>
											</div>
											<div class="field">
												<label>
													�����Ź�����
												</label>
												<input type="text" size="30" name="proTitle"
													id="team-create-title" class="f-input" value=""
													require="true" datatype="require" />
											</div>
											<div class="field">
												<label>
													�г���
												</label>
												<input type="text" size="10" name="proMPrice"
													id="team-create-market-price" class="number" 
													datatype="money" require="true" />
												<label>
													�Ź���
												</label>
												<input type="text" size="10" name="proTPrice"
													id="team-create-team-price" class="number" 
													datatype="double" require="true" />
											</div>
											<div class="field">
												<label>
													�������
												</label>
												<input type="text" size="10" name="proLowAmount"
													id="team-create-min-number" class="number" 
													maxLength="6" datatype="number" require="true" />
<%--													
												<label>
													�������
												</label>
												<input type="text" size="10" name="proHighAmount"
													id="team-create-max-number" class="number" 
													maxLength="6" datatype="number" require="true" />
 --%>													
											</div>
											<div class="field">
												<label>
													��ʼ����
												</label>
												<input type="text" size="10" name="proCreateTime"
													id="team-create-begin-time" class="date" value=""
													maxLength="10"
													onclick="return showCalendar('team-create-begin-time', 'y-mm-dd');" />
												<label>
													��������
												</label>
												<input type="text" size="10" name="proEndTime"
													id="team-create-end-time" class="date" value=""
													maxLength="10"
													onclick="return showCalendar('team-create-end-time', 'y-mm-dd');" />
												<span class="hint">�Ź���ʼ�ڿ�ʼ����00:00:00�������ڽ�������00:00:00</span>
											</div>
											<div class="field">
												<label>
													���ż��
												</label>
												<div style="float: left;">
													<textarea cols="45" rows="5" name="proIntroduce"
														id="team-create-summary" class="f-textarea"
														datatype="require" require="true"></textarea>
												</div>
											</div>
											<div class="field">
												<label>
													�ر���ʾ
												</label>
												<div style="float: left;">
													<textarea cols="45" rows="5" name="proPrompt"
														id="team-create-notice" class="f-textarea"></textarea>
												</div>
												<span class="hint">���ڱ��ű����Ч�ڣ�ʹ��˵��</span>
											</div>
											
											<div class="wholetip clear">
												<h3>
													2���Ź��������Ϣ
												</h3>
											</div>
											<div class="field">
												<label>
													�̻�
												</label>
<%--												
												<select name="proProducer" datatype="require" require="true">
													<option value='q' selected>
														------ ��ѡ���̻� ------
													</option>
													<option value='tianjin'>
														������
													</option>
												</select>
--%>												
												<input type="text" size="30" name="proProducer"
												 class="f-input" datatype="require" require="true" />
											</div>
											<div class="field">
												<label>
													��Ʒ����
												</label>
												<input type="text" size="30" name="proName"
													id="team-create-product" class="f-input" value=""
													datatype="require" require="true" />
											</div>
											<div class="field">
												<label>
													��ƷͼƬ
												</label>
												<input type="file" size="30" name="proImg1"
													id="team-create-image" class="f-input" />
												<span class="hint"></span>
											</div>
											<div class="field">
												<label>
													��ƷͼƬ2
												</label>
												<input type="file" size="30" name="proImg2"
													id="team-create-image1" class="f-input" /> 
											</div>
											<div class="field">
												<label>
													��ƷͼƬ3
												</label>
												<input type="file" size="30" name="proImg3"
													id="team-create-image2" class="f-input" />
											</div>
											<div class="field">
												<label>
													��������
												</label>
												<div style="float: left;">
													<textarea cols="45" rows="5" name="proIndent"
														id="team-create-detail" class="f-textarea"></textarea>
												</div>
											</div>
											<div class="act">
												<input type="submit" value="���ˣ��ύ" name="commit"
													id="leader-submit" class="formbutton" />
											</div>
										</form>
									</div>
								</div>
								<div class="box-bottom"></div>
							</div>
						</div>

						<div id="sidebar">
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
