<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="gbk" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>项目进度</title>
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<link rel="stylesheet" href="js/vendor/jgrowl/css/jquery.jgrowl.min.css">
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component.css" />
<!--[if IE]>
	<script src="js/html5.js"></script>

	<![endif]-->
<style>
	input::-webkit-input-placeholder{
		color:rgba(0, 0, 0, 0.726);
	}
	input::-moz-placeholder{   /* Mozilla Firefox 19+ */
		color:rgba(0, 0, 0, 0.726);
	}
	input:-moz-placeholder{    /* Mozilla Firefox 4 to 18 */
		color:rgba(0, 0, 0, 0.726);
	}
	input:-ms-input-placeholder{  /* Internet Explorer 10-11 */
		color:rgba(0, 0, 0, 0.726);
	}
</style>
</head>
<body id="indexbody">
<div class="container demo-1">
<div class="content">
<div id="large-header" class="large-header">
<canvas id="demo-canvas"></canvas>
<div style="width: 900px;height: 600px;margin-left: -470px ;font-size: larger;font-max-size: larger" class="logo_box">
<!-- 项目进度表 -->
<font color="#a3d2e9">
<table id="indextable"  border="1">
	<tr><td style="text-align: center;width: 100px">日期</td><td width="30px"></td><td style="text-align: left;width: 500px">功能</td></tr>
	<tr><td>2021.2.17</td></tr>
	<tr><td></td><td>1.</td><td> 创建项目基础 </td></tr>
	<tr><td></td><td>2.</td><td> 设定SpringMVC基础架构 </td></tr>

	<tr><td>2021.3.1</td></tr>
	<tr><td></td><td>1.</td><td> 添加登录注册的功能 </td></tr>
	<tr><td></td><td>2.</td><td> 修改数据库查询BUG </td></tr>
	<tr><td></td><td>3.</td><td> 创建项目更新日志前端界面 </td></tr>
	<tr><td></td><td>4.</td><td> 汉化分析index网页 </td></tr>

	<tr><td>2021.3.2</td></tr>
	<tr><td></td><td>1.</td><td> 注册页面增加Ajax查重功能<br>&thinsp;&thinsp;&thinsp;1.1用户名查重<br>
		&thinsp;&thinsp;&thinsp;1.2昵称查重 </td></tr>
	<tr><td></td><td>2.</td><td> 设定用户名昵称和密码的正则表达式 </td></tr>
	<tr><td></td><td>3.</td><td> 设定表单提交条件：所有输入框符合规范 </td></tr>
	<tr><td></td><td>4.</td><td> 调整Ajax的相关BUG </td></tr>

	<tr><td>2021.3.3</td></tr>
	<tr><td></td><td>1.</td><td> 汉化部分settings.jsp的网页 </td></tr>
	<tr><td></td><td>2.</td><td> 增加上传头像的代码，功能测试不成功。 </td></tr>
	<tr><td></td><td>3.</td><td> 增加包含的jsp：将用户头像部分设定为包含，已经调整index.jsp和settings.jsp </td></tr>
	<tr><td></td><td>4.</td><td> 【问题记录】项目进度文件从html调整为jsp，因为遇到了反复重定向的问题，
		使用不同方法进行重定向，未解决；清空浏览记录，未解决；
		文件后缀调整为jsp，问题解决。详细原因明天了解。 </td></tr>
	<tr><td></td><td>5.</td><td> 更换项目更新日志表格格式，背景图片，文本颜色 </td></tr>

	<tr><td>2021.3.4</td></tr>
	<tr><td></td><td>1.</td><td> 调整头像上传的BUG：配置文件中缺少id </td></tr>
	<tr><td></td><td>2.</td><td> 调整用户个人中心表单提交问题：不能正常提交表单，表单获取参数以上 </td></tr>
	<tr><td></td><td>3.</td><td> 完善登录界面中表单提交问题，调整用户名或密码错误返回异常的BUG </td></tr>

	<tr><td>2021.3.5</td></tr>
	<tr><td></td><td>1.</td><td> 增加网站过滤器，通过输入网址仅能访问登录注册页面 </td></tr>
	<tr><td></td><td>2.</td><td> 增加网站账号密码保存到Cookie功能，其他用户登录不勾选保存密码功能，不会清除原有用户的Cookie缓存 </td></tr>
	<tr><td></td><td>3.</td><td> 修改用户注册之后用户部分信息不能正常显示的BUG（默认信息未从数据库获得） </td></tr>
	<tr><td></td><td>4.</td><td> 调试Cookie的BUG </td></tr>

	<tr><td>2021.3.6</td></tr>
	<tr><td></td><td>1.</td><td> 调整cookie参数传递，response转发的BUG </td></tr>
	<tr><td></td><td>2.</td><td> 调试项目不能通过EL表达式获得pageContext对象的问题 </td></tr>
	<tr><td></td><td>3.</td><td> 将所有jsp文件中JAVA代码替换为EL表达式 </td></tr>
	<tr><td></td><td>4.</td><td> 修改index页面设置按钮显示异常的BUG </td></tr>
	<tr><td></td><td>5.</td><td> 【新增】用户确认保存密码后，再次登录会默认勾选保存密码复选框 </td></tr>

	<tr><td>2021.3.7</td></tr>
	<tr><td></td><td>1.</td><td> 【新增】页面包含：好友列表设定为包含，设置页面包含不变，仅包含用户个人信息页 </td></tr>
	<tr><td></td><td>2.</td><td> 【新增】页面包含：页面右侧按钮设定为包含页面，已调整index页面和settings页面 </td></tr>

	<tr><td>2021.3.8</td></tr>
	<tr><td></td><td>1.</td><td> 【BUG】修复不能正常清除cookie的BUG，
		并发布<a href="https://www.cnblogs.com/pepper-tree/p/14498748.html">>博客<</a> </td></tr>
	<tr><td></td><td>2.</td><td> 【新增】个人中心修改个人信息增加Ajax验证</td></tr>
	<tr><td></td><td>3.</td><td> 【Bug】个人信息显示页面头像过大显示异常，设定img大小，BUG搞定 </td></tr>
	<tr><td></td><td>4.</td><td> 【BUG】登录无法正确获取用户头像，修改userDAO中sql查询语句的错误 </td></tr>
	<tr><td></td><td>5.</td><td> 了解关于即时收发信息的相关知识 </td></tr>

	<tr><td>2021.3.9</td></tr>
	<tr><td></td><td>1.</td><td> 【调整】将项目调整为面向对象编程的模式，主要调整UseDAO和新增service包 </td></tr>
	<tr><td></td><td>2.</td><td> 写博客 </td></tr>


	<tr><td>2021.3.10</td></tr>
	<tr><td></td><td>1.</td><td> 确定好友相关查询的查询逻辑 </td></tr>

	<tr><td>2021.3.11</td></tr>
	<tr><td></td><td>1.</td><td> 【新增】查询所有好友的ID，查询所有好友的信息 </td></tr>
	<tr><td></td><td>2.</td><td> 【新增】查询最近一条聊天记录的详细信息 </td></tr>


	<tr><td>2021.3.12</td></tr>
	<tr><td></td><td>1.</td><td> 【调整】调整搜索出信息的显示，包括，最近聊天，所有好友 </td></tr>
	<tr><td></td><td>2.</td><td> 【BUG】解决EL表达式条件判断缺少choose的问题 </td></tr>
	<tr><td></td><td>3.</td><td> 【BUG】解决数据仓库查询出来的额信息放入集合时对象相同的问题 </td></tr>
	<tr><td></td><td>4.</td><td> 【新增】添加近10条聊天消息查询功能，预设后面查看更多聊天记录使用Ajsx方式查询 </td></tr>

	<tr><td>2021.3.13</td></tr>
	<tr><td></td><td>1.</td><td> 【调整】调整查询出来的好友信息和最近聊天为session保存 </td></tr>
	<tr><td></td><td>2.</td><td> 【调整】在单独聊天页面添加好友加入聊天部分，好友列表消失调整为sessionForEach循环输出好友列表 </td></tr>

	<tr><td>2021.3.15</td></tr>
	<tr><td></td><td>1.</td><td> 【BUG】解决部分显示异常的BUG </td></tr>
	<tr><td></td><td>2.</td><td> 【调整】将注册功能DAO修改为Mybatis </td></tr>

	<tr><td>2021.3.16</td></tr>
	<tr><td></td><td>1.</td><td> 【测试】创建WebSocket测试demo，测试失败 </td></tr>

	<tr><td>2021.3.17</td></tr>
	<tr><td></td><td>1.</td><td> 【测试】创建WebSocket测试demo，测试成功 </td></tr>

	<tr><td>2021.3.18</td></tr>
	<tr><td></td><td>1.</td><td> text </td></tr>
	<tr><td></td><td>2.</td><td> text </td></tr>
	<tr><td></td><td>3.</td><td> text </td></tr>
	<tr><td></td><td>4.</td><td> text </td></tr>

	<tr><td>2021.3.19</td></tr>
	<tr><td></td><td>1.</td><td> text </td></tr>
	<tr><td></td><td>2.</td><td> text </td></tr>
	<tr><td></td><td>3.</td><td> text </td></tr>
	<tr><td></td><td>4.</td><td> text </td></tr>


</table>
</font>
</div>
</div>
</div>
</div><!-- /container -->
		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/jquery.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
		<script src="js/vendor/jgrowl/jquery.jgrowl.min.js"></script>
		<script src="js/Longin.js"></script>
		<div style="text-align:center;">
</div>
	</body>
<style type="text/css">
	#indextable tr td{
		margin-right: 15px;
		padding: 5px;
	}
	.logo_box{
		overflow: scroll;
		margin-top: -300px;
	}
	#indextable tr{
		margin-top: 10px;
		border-buttom-color: #003366;
	}
	<!--设置滚动条样式为不显示滚动条-->
	::-webkit-scrollbar-button{
		display: none;
	}
	::-webkit-scrollbar-track{
		display: none;
	}
	::-webkit-scrollbar{
		display: none;
	}
	<!--设置结束-->
</style>
</html>