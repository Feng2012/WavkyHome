<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base target="_self" />
<title><s:text name="titleLab" /></title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/common_frame.css" />
<link rel="stylesheet" type="text/css" href="css/lab_edit.css" />
<link rel="icon" type="image/x-icon" href="image/favicon.ico" />
</head>
<body>
	<!-- 居中内容框 -->
	<div id="main">
		<!-- 页眉logo、导航栏 -->
		<div id="header">
			<div id="top">
				<div id="language">
					<a href="?request_locale=en_US" target="_self"><img
						src="image/us.png" alt="English" title="English" /></a> <a
						href="?request_locale=zh_CN" target="_self"><img
						src="image/cn.png" alt="中文" title="中文" /></a> <a
						href="?request_locale=ja_JP" target="_self"><img
						src="image/jp.png" alt="日本語" title="日本語" /></a>
				</div>
				<div id="visitor">
					<a href="http://info.flagcounter.com/eqvj"><img
						src="http://s03.flagcounter.com/count2/eqvj/bg_B2A36A/txt_000000/border_B2A36A/columns_5/maxflags_5/viewers_3/labels_0/pageviews_0/flags_0/"
						alt="vistor" /></a>
				</div>
			</div>
			<div class="logo" id="logoDIV">
				<img src="image/logo.png" />
				<s:if test='#session.isMaster'>
					<a href="logout" target="_self" title="exit"><img
						src="image/logout.png" /></a>
				</s:if>
				<s:else>
					<a href="login" target="_self" title="console"><img
						src="image/login.png" /></a>
				</s:else>
			</div>
			<div class="navigation" id="navigationDIV">
				<ul id="navigationLIST">
					<li><a class="radius" href="index" target="_self">Home</a></li>
					<li><a class="currentTab radius" href="#" target="_self">Lab</a>
					</li>
					<li><a class="radius" href="interface" target="_self">Interface</a>
					</li>
					<li><a class="radius" href="master" target="_self">Master
							Info</a></li>
				</ul>
			</div>
		</div>

		<!-- 页面内容 -->
		<div id="content">
			<s:if test='#session.isMaster'>
				<a href="lab">
					<div id="edit">退出编辑</div>
				</a>
			</s:if>
			<div id="addProject">
				<form action="lab/edit/addProject" enctype="multipart/form-data"
					method="post">
					<table>
						<tr>
							<td>类型：</td>
							<td><input name="type" type="radio" value="android"
								id="androidRadio" /> <label for="androidRadio">android</label>
								<input name="type" type="radio" value="web" id="webRadio"
								class="typeRadio" /> <label for="webRadio">web</label> <input
								name="type" type="radio" value="window" id="windowRadio"
								class="typeRadio" /> <label for="windowRadio">window</label></td>
						</tr>
						<tr>
							<td>标题：</td>
							<td><input type="text" class="text" /></td>
						</tr>
						<tr>
							<td>链接：</td>
							<td><input type="text" class="text" /></td>
						</tr>
						<tr>
							<td>预览图 (267x150)：</td>
							<td><input type="file" /></td>
						</tr>
					</table>
					<button type="submit" id="submit" title="Add Project">
						<img src="image/add.png" />
					</button>
				</form>
			</div>
			<div id="projectList">
				<h1>
					<s:text name="project" />
				</h1>
				<ul>
					<li><a href="http://www.baidu.com" title="delete">
							<div class="projectUnit">
								<div class="delete">
									<img src="image/delete.png" />
								</div>
								<div class="snapshot">
									<img src="image/web.jpg" />
									<div class="platformMark">
										<img src="image/ie.png">
									</div>
								</div>
								<p class="title">百度</p>
							</div>
					</a></li>
					<li>
						<div class="projectUnit">
							<div class="delete">
								<img src="image/delete.png" />
							</div>
							<div class="snapshot">
								<img src="image/web2.jpg" />
								<div class="platformMark">
									<img src="image/android.png">
								</div>
							</div>
							<p class="title">游民星空 GAMERSKY</p>
						</div>
					</li>
					<li>
						<div class="projectUnit">
							<div class="delete">
								<img src="image/delete.png" />
							</div>
							<div class="snapshot">
								<img src="image/web.jpg" />
								<div class="platformMark">
									<img src="image/window.png">
								</div>
							</div>
							<p class="title">呵呵</p>
						</div>
					</li>
					<li>
						<div class="projectUnit">
							<div class="delete">
								<img src="image/delete.png" />
							</div>
							<div class="snapshot">
								<img src="image/web.jpg" />
								<div class="platformMark">
									<img src="image/ie.png">
								</div>
							</div>
							<p class="title">google</p>
						</div>
					</li>
					<li>
						<div class="projectUnit">
							<div class="delete">
								<img src="image/delete.png" />
							</div>
							<div class="snapshot">
								<img src="image/web.jpg" />
								<div class="platformMark">
									<img src="image/window.png">
								</div>
							</div>
							<p class="title">本地应用EXE</p>
						</div>
					</li>
					<li>
						<div class="projectUnit">
							<div class="delete">
								<img src="image/delete.png" />
							</div>
							<div class="snapshot">
								<img src="image/web2.jpg" />
								<div class="platformMark">
									<img src="image/android.png">
								</div>
							</div>
							<p class="title">Android app</p>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<!-- 备用浮动页脚 -->
		<div id="footer"></div>
	</div>
</body>
</html>
