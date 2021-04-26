<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    pageContext.setAttribute("path", path);%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>WebChat</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>

<link rel="stylesheet" href="${pageScope.path}/static/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
      href="${pageScope.path}/static/dist/assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css">

<link rel="stylesheet" href="${pageScope.path}/static/dist/assets/css/style.min.css">
<body>
<div id="layout" class="theme-cyan">


    <!--最近聊天以及用户个人信息-->
    <jsp:include page="/user/include/recentChats"></jsp:include>

    <!--网页右侧拓展功能区域-->
    <jsp:include page="../include/expandFunctionAtRight.jsp"></jsp:include>


    <div class="main px-xl-5 px-lg-4 px-3">

        <div class="chat-body">

            <div class="chat d-flex justify-content-center align-items-center h-100 text-center py-xl-4 py-md-3 py-2">
                <div class="container-xxl">
                    <div class="avatar lg avatar-bg me-auto ms-auto mb-5">
                        <img class="avatar lg rounded-circle border"
                             src="${pageScope.path}/static/dist/assets/images/${sessionScope.user.profile}" alt=""/>
                        <span class="a-bg-1"></span>
                        <span class="a-bg-2"></span>
                    </div>
                    <h5 class="font-weight-bold">${sessionScope.user.nickname}</h5>
                    <p>忽闻梅福来相访，笑着荷衣出草堂。</p>
                </div>
            </div>

        </div>

    </div>


    <div class="modal fade" id="InviteFriends" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">邀请</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="inviteform" >
                        <div class="form-group">
                            <label>邮箱/账号</label>
                            <input type="email" class="form-control">
                            <small id="emailHelp" class="form-text text-muted">我们永远不会与其他人共享您的个人信息。</small>
                        </div>
                    </form>
                    <div class="mt-5">
                        <button type="button" class="btn btn-primary">发送邀请</button>
                        <button type="button" class="btn btn-link" data-dismiss="modal">关闭</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<script type="text/javascript" src="${pageScope.path}/static/dist/assets/vendor/jquery/jquery-3.5.1.min.js"></script>
<script type="text/javascript"
        src="${pageScope.path}/static/dist/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript"
        src="${pageScope.path}/static/dist/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

<script src="${pageScope.path}/static/js/template.js"></script>


</body>
</html>
