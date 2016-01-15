<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta http-equiv=content-type content="text/html; charset=gbk"/>
			<title>沃团 - 管理后台</title>
			<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
			<link rel="shortcut icon" href="images/favicon0.ico" />
			<link rel="stylesheet" href="images/index000.css" type="text/css"
				media="screen" charset="gbk" />
			<script type="text/javascript">
	var WEB_ROOT = '/mt';
</script>
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
						<a href="http://192.168.2.49/mt/index.php" class="link"
							target="_blank"><src="images/logo0000.JPG" /></a>
					</div>
					<div class="guides">
						<div class="city">
							<h2>
								管理后台
							</h2>
						</div>
						<div id="guides-city-change" class="change"></div>
					</div>
					<ul class="nav cf">
						<li>
							<a href="bgindex.jsp">首页</a>
						</li>
						<li>
							<a href="produceservlet?action=list&flag=3">团购</a>
						</li>
						<li>
							<a href="orderitemservlet?action=list">订单</a>
						</li>
						<li class="current">
							<a href="userservlet?action=list">用户</a>
						</li>
						
						<li>
							<a href="mtsh.jsp">商户</a>
						</li>
					</ul>
				</div>
			</div>


			<div id="bdw" class="bdw">
				<div id="bd" class="cf">
					<div id="leader">
						<div class="dashboard" id="dashboard">
							<ul>
								<li class="current">
									<a href="produceservlet?action=list&flag=3">当前团购</a><span></span>
								</li>
								<li>
									<a href="produceservlet?action=list&flag=0">成功团购</a><span></span>
								</li>
								<li>
									<a href="failTuangou.jsp">失败团购</a><span></span>
								</li>
								<li>
									<a href="newTuangou.jsp">新建团购</a><span></span>
								</li>
							</ul>
						</div>
						<div id="content" class="clear mainwide">
							<div class="clear box">
								<div class="box-top"></div>
								<div class="box-content">
									<div class="head">
										<h2>
											新建系统团购
										</h2>
									</div>
									<div class="sect">
										<form id="login-user-form" method="post" class="validator"
											action="../update.do">
											<div class="wholetip clear">
												<h3>
													1、基本信息
												</h3>
											</div>
											<div class="field">
												<label>
													城市及分类
												</label>
												<select name="city" class="f-input" style="width: 160px;">
													<option value="全部城市" selected>
														全部城市
													</option>
													<option value="济南">
														济南
													</option>
													<option value="北京">
														北京
													</option>
												</select>

												<select name="category" class="f-input"
													style="width: 160px;">
													<option value='休闲娱乐'>
														休闲娱乐
													</option>
													<option value='精品购物'>
														精品购物
													</option>
													<option value='餐饮美食'>
														餐饮美食
													</option>
												</select>
											</div>
											<div class="field">
												<label>
													本次团购标题
												</label>
												<input type="text" size="30" name="title"
													id="team-create-title" class="f-input"
													value="${bjform.title }" require="true" datatype="require" />
											</div>
											<div class="field">
												<label>
													市场价
												</label>
												<input type="text" size="10" name="scprice"
													id="team-create-market-price" class="number"
													value="${bjform.scprice }" datatype="money" require="true" />
												<label>
													团购价
												</label>
												<input type="text" size="10" name="tgprice"
													id="team-create-team-price" class="number"
													value="${bjform.tgprice }" datatype="double" require="true" />
											</div>
											<div class="field">
												<label>
													最低数量
												</label>
												<input type="text" size="10" name="smallnum"
													id="team-create-min-number" class="number"
													value="${bjform.smallnum }" maxLength="6" datatype="number"
													require="true" />
												<label>
													最高数量
												</label>
												<input type="text" size="10" name="bignum"
													id="team-create-max-number" class="number"
													value="${bjform.bignum }" maxLength="6" datatype="number"
													require="true" />
											</div>
											<div class="field">
												<label>
													开始日期
												</label>
												<input type="text" size="10" name="begintime"
													id="team-create-begin-time" class="date"
													value="${bjform.begintime }" maxLength="10" />
												<label>
													结束日期
												</label>
												<input type="text" size="10" name="endtime"
													id="team-create-end-time" class="date"
													value="${bjform.endtime }" maxLength="10" />
												<span class="hint">团购开始于开始日期00:00:00，结束于结束日期00:00:00</span>
											</div>
											<div class="field">
												<label>
													本团简介
												</label>
												<div style="float: left;">
													<textarea cols="45" rows="5" name="introduce"
														id="team-create-summary" class="f-textarea"
														datatype="require" require="true">${bjform.introduce }</textarea>
												</div>
											</div>
											<div class="field">
												<label>
													特别提示
												</label>
												<div style="float: left;">
													<textarea cols="45" rows="5" name="cue"
														id="team-create-notice" class="f-textarea editor">${bjform.cue }</textarea>
												</div>
												<span class="hint">关于本团标的有效期，使用说明</span>
											</div>
											<input type="hidden" name="guarantee" value="Y" />
											<input type="hidden" name="system" value="Y" />
											<div class="wholetip clear">
												<h3>
													2、团购标的物信息
												</h3>
											</div>
											<div class="field">
												<label>
													商户
												</label>
												<select name="businessman" datatype="require" require="true">
													<option value='q' selected>
														------ 请选择商户 ------
													</option>
													<option value='jinan'>
														济南纳六网络科技有限公司
													</option>
												</select>
											</div>
											<div class="field">
												<label>
													商品名称
												</label>
												<input type="text" size="30" name="spname"
													id="team-create-product" class="f-input"
													value="${bjform.spname }" datatype="require" require="true" />
											</div>
											<div class="field">
												<label>
													商品图片
												</label>
												<input type="file" size="30" name="sp../images1"
													id="team-create-image" class="f-input" />
												<span class="hint">至少得上传一张商品图片</span>
											</div>
											<div class="field">
												<label>
													商品图片2
												</label>
												<input type="file" size="30" name="sp../images2"
													id="team-create-image1" class="f-input" />
											</div>
											<div class="field">
												<label>
													商品图片3
												</label>
												<input type="file" size="30" name="sp../images3"
													id="team-create-image2" class="f-input" />
											</div>
											<div class="field">
												<label>
													本单详情
												</label>
												<div style="float: left;">
													<textarea cols="45" rows="5" name="orderform"
														id="team-create-detail" class="f-textarea editor">${bjform.orderform }</textarea>
												</div>
											</div>
											<div class="act">
												<input type="submit" value="好了，提交" name="commit"
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
