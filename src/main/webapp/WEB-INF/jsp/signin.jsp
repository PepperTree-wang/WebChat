<%@ page import="com.wanmait.webchat.util.CookieUtil" %>
<%@ page import="org.apache.tomcat.util.http.parser.Cookie" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    pageContext.setAttribute("path",path);
%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>登录</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>

<link rel="stylesheet" href="${pageScope.path}/static/fonts/material-icon/css/material-design-iconic-font.min.css">

<link rel="stylesheet" href="${pageScope.path}/static/dist/assets/css/style.min.css">


<body>
<div id="layout" class="theme-cyan">
    <div class="authentication">
        <div class="container d-flex flex-column">
            <div class="row align-items-center justify-content-center no-gutters min-vh-100">
                <div class="col-12 col-md-7 col-lg-5 col-xl-4 py-md-11">
                    <div class="card border-0 shadow-sm">
                        <div class="card-body">

                            <h3 class="text-center">登录</h3>

                            <p class="text-center mb-6">但愿人长久，千里共婵娟。</p>

                            <form method="post" id="formsubmit" action="${pageScope.path}/user/signin" class="mb-4 mt-5">

                                <div class="input-group mb-2">
                                    <input type="text" name="name" id="nameinput" 
                                           value="${cookie.name.value == null? null:cookie.name.value}"
                                           class="form-control form-control-lg"
                                           placeholder="账号">
                                </div>

                                <div class="input-group mb-4">
                                    <input type="password" name="pass" id="passinput" 
                                           value="${cookie.pass.value == null? null:cookie.pass.value}"
                                           class="form-control form-control-lg"
                                           placeholder="密码">
                                </div>
                                <div class="form-group d-flex justify-content-between">
                                    <label class="c_checkbox">
                                        <input type="checkbox" name="remberpass"
                                        checked="${cookie.name.value == null? null:"checked"}">
                                        <span class="ms-2 todo_name">记住密码</span>
                                        <span class="checkmark"></span>
                                    </label>
                                    <a class="link" href="${pageScope.path}passwordReset">重置密码</a>
                                </div>

                                <div class="text-center mt-5">
                                    <button class="btn btn-lg btn-primary">登录</button>
                                </div>
                            </form>

                            <p class="text-center mb-0">点击<a class="link" href="${pageScope.path}/signup">注册</a></p>
                            <p class="text-center mb-0"><a href="${pageScope.path}/log">查看项目进度</a></p>
                            <!-- 未登录成功显示提示 -->
                            <span class="text-center mb-0" style="color: red">
                                ${requestScope.remind != null? requestScope.remind:""}
                            </span>

                        </div>
                    </div>
                </div>
                <div class="signin-img d-none d-lg-block text-center">
                    <img src="${pageScope.path}/static/dist/assets/images/signin-img-cyan.svg" alt="Sign In Image"/>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="${pageScope.path}/static/dist/assets/vendor/jquery/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${pageScope.path}/static/dist/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
    $(function (){
        //增加失去焦点验证的方法
        $("#nameinput").blur(checkName);
        $("#passinput").blur(checkPass);
        $("#formsubmit").submit(checkForm);

    });
    function checkName(){
        var valueTemp = $("#nameinput").val();
        return inputEmpty(valueTemp);
    }
    function checkPass(){
        var valueTemp = $("#passinput").val();
        return inputEmpty(valueTemp);
    }
    function checkForm(){
        return checkName()&&checkPass();
    }
    function inputEmpty(valueTemp){
        if (valueTemp == ""){
            return false;
        }else{
            return true;
        }         
    }

</script>


</body>
</html>
