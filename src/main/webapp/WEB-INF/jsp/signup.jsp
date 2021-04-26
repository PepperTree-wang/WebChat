<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title> 注册</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>

<link rel="stylesheet" href="<%=path %>/static/fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="<%=path %>/static/dist/assets/css/style.min.css">
<body>
<div id="layout" class="theme-cyan">
    <div class="authentication">
        <div class="container d-flex flex-column">
            <div class="row align-items-center justify-content-center no-gutters min-vh-100">
                <div class="col-12 col-md-7 col-lg-5 col-xl-4 py-md-11">
                    <div class="card border-0 shadow-sm">
                        <div class="card-body">

                            <h3 class="text-center">注册</h3>

                            <p class="text-center mb-6">花径不曾缘客扫，蓬门今始为君开。</p>

                            <form method="post" id="myform" action="<%=path%>/user/signup" class="mb-4 mt-5">

                                <div class="input-group mb-2">
                                    <input type="text" id="name" name="name" class="form-control form-control-lg"
                                           placeholder="账号：5-15位常规合法字符">
                                </div>

                                <div class="input-group mb-2">
                                    <input type="text" id="nickname" name="nickname"
                                           class="form-control form-control-lg" placeholder="昵称:不可重复">
                                </div>

                                <div class="input-group mb-2">
                                    <input type="password" name="pass" id="pass1" class="form-control form-control-lg"
                                           placeholder="密码：字母开头，6-11位">
                                </div>

                                <div class="input-group mb-4">
                                    <input type="password" id="pass2" class="form-control form-control-lg"
                                           placeholder="确认密码">
                                </div>

                                <div class="text-center mt-5">
                                    <button class="btn btn-lg btn-primary">注册</button>
                                </div>
                            </form>

                            <p class="text-center mb-0">已有账号？<a class="link" href="<%=path%>/user/signin">登录</a></p>

                            <div class="mt-4 d-grid gap-1">
                                <button type="button" class="btn btn-block btn-outline-google">五行聚会生俄尔，</button>
                                <button type="button" class="btn btn-block btn-outline-facebook">一颗圆明出自然。</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="signin-img d-none d-lg-block text-center">
                    <img src="<%=path %>/static/dist/assets/images/signin-img-cyan.svg" alt="Sign In Image"/>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="<%=path %>/static/dist/assets/vendor/jquery/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="<%=path %>/static/dist/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
    $(function () {
        //增加失去焦点事件
        $("#name").blur(name);
        $("#nickname").blur(nickname);
        $("#pass1").blur(pass);
        $("#pass2").blur(pass2);
        //增加表单提交事件
        $("#myform").submit(submitform);

        //设定表单提交
        function submitform() {
            return name() && nickname && pass() && pass2();
        }

        //数据库查重
        //检查用户名是否重复
        function name() {
            var objects = $("#name");
            var sqlname = "name";
            var rule = /^\w{5,15}$/;
            var url = "<%=path%>/user/checkname";
            return check(objects, rule, url, sqlname);
        }

        //检查昵称是否重复
        function nickname() {
            var objects = $("#nickname");
            var sqlname = "nickname";
            var rule = /^[\u4e00-\u9fa5_a-zA-Z0-9]{2,8}$/;
            var url = "<%=path%>/user/checkname";
            return check(objects, rule, url, sqlname);
        }

        //检查密码是否符合规范
        function pass() {
            var password = $("#pass1");
            var passvalue = password.val();
            var rule = /^[a-zA-Z]{1}\w{5,11}$/;
            if (rule.test(passvalue)) {
                return tips(password, "black")
            } else {
                return tips(password, "red")
            }
        }

        //检查两次密码是否一致
        function pass2() {
            var password = $("#pass2");
            var p1 = $("#pass1").val();
            var p2 = password.val();
            if (p1 == p2) {
                return tips(password, "black")
            } else {
                return tips(password, "red")
            }
        }

        //封装后台查重
        function check(objects, rule, url, sqlname) {
            var value = objects.val();
            if (rule.test(value)) {//符合正则表达式
                //通过Ajax查重
                var flag;
                $.ajax({
                    url: url,
                    type: "get",
                    async: false,
                    data: {data: value, sqlname: sqlname},
                    success: function (mes) {
                        if (mes == "true") {
                            flag = tips(objects, "red")
                        } else {
                            flag = tips(objects, "black");
                        }
                    }
                });
                return flag;
            } else {
                return tips(objects, "red");
            }
        }

        //设置输入框输入有误提示
        function tips(htmltag, color) {
            htmltag.css("color", color);
            if (color == "red") {
                return false
            } else {
                return true
            }
        }
    });
</script>
</body>
</html>
