<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String path = request.getContextPath();
    pageContext.setAttribute("path", path);%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>${requestScope.chatFriend.nickname}</title>
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
            <!-- 聊天表头，好友头像和好友昵称显示区域 -->
            <div class="chat-header border-bottom py-xl-4 py-md-3 py-2">
                <div class="container-xxl">
                    <div class="row align-items-center">

                        <div class="col-6 col-xl-4">
                            <div class="media">
                                <div class="me-3 show-user-detail">
                                    <span class="status rounded-circle"></span>
                                    <img class="avatar rounded-circle"
                                         src="${pageScope.path}/static/dist/assets/images/${requestScope.chatFriend.profile}" alt="avatar">
                                </div>
                                <div class="media-body overflow-hidden">
                                    <div class="d-flex align-items-center mb-1">
                                        <h6 class="text-truncate mb-0 me-auto">${requestScope.chatFriend.nickname}</h6>
                                    </div>
                                    <div class="text-truncate">online</div>
                                </div>
                            </div>
                        </div>

                        <div class="col-6 col-xl-8 text-end">
                            <ul class="nav justify-content-end">
                                <li class="nav-item list-inline-item d-none d-md-block me-3">
                                    <a href="#" class="nav-link text-muted px-3" data-toggle="collapse"
                                       data-target="#chat-search-div" aria-expanded="true" title="搜索聊天">
                                        <i class="zmdi zmdi-search zmdi-hc-lg"></i>
                                    </a>
                                </li>
                                <li class="nav-item list-inline-item d-none d-sm-block me-3">
                                    <a href="#" class="nav-link text-muted px-3" title="视频通话">
                                        <i class="zmdi zmdi-videocam zmdi-hc-lg"></i>
                                    </a>
                                </li>
                                <li class="nav-item list-inline-item d-none d-sm-block me-3">
                                    <a href="audio-call.jsp" class="nav-link text-muted px-3" title="语音通话">
                                        <i class="zmdi zmdi-phone-forwarded zmdi-hc-lg"></i>
                                    </a>
                                </li>
                                <li class="nav-item list-inline-item add-user-btn">
                                    <a href="#" class="nav-link text-muted px-3" title="邀请加入">
                                        <i class="zmdi zmdi-account-add zmdi-hc-lg"></i>
                                    </a>
                                </li>

                                <li class="nav-item list-inline-item d-block d-sm-none px-3">
                                    <div class="dropdown">
                                        <a class="nav-link text-muted px-0" href="#" data-toggle="dropdown"
                                           aria-haspopup="true" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert zmdi-hc-lg"></i>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">搜索聊天</a>
                                            <a class="dropdown-item" href="#">Attache Image</a>
                                            <a class="dropdown-item" href="#">视频电话</a>
                                            <a class="dropdown-item" href="#">语音通话</a>
                                            <a class="dropdown-item" href="#">邀请加入</a>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="collapse" id="chat-search-div">
                <div class="container-xxl py-2">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Find messages in current conversation">
                        <div class="input-group-append">
                            <span class="input-group-text text-muted">0 / 0</span>
                        </div>
                        <div class="input-group-append">
                            <button type="button" class="btn btn-secondary">搜索</button>
                            <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="sr-only">切换下拉列表</span>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right shadow border-0">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                                <div role="separator" class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Separated link</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 聊天内容 -->
            <div class="chat-content"  id="scrollDIV" style="height: 900px">
                <div class="container-xxl" >
                    <ul class="list-unstyled py-4" id="messageUl">

                        <c:forEach var="chat" varStatus="ststus" items="${requestScope.chatsWithFriend}" >
                            <c:choose>
                                <c:when test="${sessionScope.user.id ne chat.host.id}">

                                    <li class="d-flex message" id="${chat.id}">
                                        <!-- 头像 -->
                                        <div class="mr-lg-3 me-2">
                                            <img class="avatar sm rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/${chat.host.profile}" alt="avatar">
                                        </div>

                                        <!-- 信息主体 -->
                                        <div class="message-body">
                                            <!-- 用户名，发送信息的事件 -->
                                            <span class="date-time text-muted">${chat.host.nickname}, ${chat.time}</span>
                                            <div class="message-row d-flex align-items-center">

                                                <!-- 消息内容 -->
                                                <div class="message-content p-3">
                                                    ${chat.content}
                                                </div>

                                                <!-- 对本条消息进行处理 -->
                                                <div class="dropdown">
                                                    <a class="text-muted ms-1 p-2 text-muted" href="#" data-toggle="dropdown"
                                                       aria-haspopup="true" aria-expanded="false">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                        <a class="dropdown-item" href="#">回复</a>
                                                        <a class="dropdown-item" href="#">分享</a>
                                                        <a class="dropdown-item" href="#">删除</a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="d-flex message right" id="${chat.id}">

                                        <div class="message-body">
                                            <span class="date-time text-muted">${chat.time}
                                                <i class="zmdi zmdi-check-all text-primary"></i> &nbsp;
                                            </span>
                                            <div class="message-row d-flex align-items-center justify-content-end">

                                                <div class="dropdown">
                                                    <a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown"
                                                       aria-haspopup="true" aria-expanded="false">
                                                        <i class="zmdi zmdi-more-vert"></i>
                                                    </a>
                                                    <div class="dropdown-menu">
                                                        <a class="dropdown-item" href="#">回复</a>
                                                        <a class="dropdown-item" href="#">分享</a>
                                                        <a class="dropdown-item" href="#">删除</a>
                                                    </div>
                                                </div>
                                                <div class="message-content border p-3">
                                                    ${chat.content}
                                                </div>
                                            </div>
                                        </div>

                                        <div class="mr-lg-3 me-2">
                                            <img class="avatar sm rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/${sessionScope.user.profile}"
                                                 alt="avatar">
                                        </div>
                                    </li>
                                </c:otherwise>
                            </c:choose>

                        </c:forEach>
                    </ul>
                </div>
            </div>

            <!-- 发送消息框 -->
            <div class="chat-footer border-top py-xl-4 py-lg-2 py-2">
                <div class="container-xxl">
                    <div class="row">
                        <div class="col-12">
                            <div class="input-group align-items-center">

                                <input type="text" id="sendMessage" class="form-control border-0 pl-0"
                                       placeholder="输入新消息">

                                <div class="input-group-append d-none d-sm-block">
                                     <span class="input-group-text border-0">
                                    <button class="btn btn-sm btn-link text-muted" data-toggle="tooltip" title="刷新" type="button"><i
                                            class="zmdi zmdi-refresh font-22"></i></button>
                                    </span>
                                </div>
                                <div class="input-group-append">
                                    <span class="input-group-text border-0">
                                    <button class="btn btn-sm btn-link text-muted" data-toggle="tooltip" title="表情" type="button"><i
                                            class="zmdi zmdi-mood font-22"></i></button>
                                    </span>
                                </div>
                                <div class="input-group-append">
                                    <span class="input-group-text border-0">
                                    <button class="btn btn-sm btn-link text-muted" data-toggle="tooltip" title="附件" type="button"><i
                                            class="zmdi zmdi-attachment font-22"></i></button>
                                    </span>
                                </div>

                                <div class="input-group-append">
                                    <span class="input-group-text border-0 pr-0">
                                    <button type="submit" id="sendButton" class="btn btn-primary">
                                    <span class="d-none d-md-inline-block me-2">发送</span>
                                    <i class="zmdi zmdi-mail-send"></i>
                                    </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="user-detail-sidebar py-xl-4 py-3 px-xl-4 px-3">
            <div class="d-flex flex-column">
                <div class="header border-bottom pb-4 d-flex justify-content-between">
                    <div>
                        <h6 class="mb-0 font-weight-bold">User Details</h6>
                        <span class="text-muted">Update your profile details</span>
                    </div>
                    <div>
                        <button class="btn btn-link text-muted close-chat-sidebar" type="button"><i
                                class="zmdi zmdi-close"></i></button>
                    </div>
                </div>
                <div class="body mt-4">
                    <div class="d-flex justify-content-center">
                        <div class="avatar xxl">
                            <img class="avatar xxl rounded-circle"
                                 src="${pageScope.path}/static/dist/assets/images/sm/avatar2.jpg" alt="avatar">
                        </div>
                    </div>
                    <div class="text-center mt-3 mb-5">
                        <h4>Jason Porter</h4>
                        <span class="text-muted"><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                                    data-cfemail="4c21252f2429202029622b3e2929220c2b212d2520622f2321">[email&#160;protected]</a></span>
                        <p>+14 123 456 789 - New york (USA)</p>
                    </div>

                    <ul class="chat-list">
                        <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                            <span>mutual friend</span>
                        </li>
                        <li>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Michelle Green</h6>
                                            </div>
                                            <div class="text-truncate">+14 123 456 258</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar2.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
                                            </div>
                                            <div class="text-truncate">+14 123 456 963</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar3.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Elizabeth Martin</h6>
                                            </div>
                                            <div class="text-truncate">+14 123 456 753</div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 聊天中新增好友 -->
        <div class="addnew-user-sidebar py-xl-4 py-3 px-xl-4 px-3">
            <div class="d-flex flex-column">
                <div class="header border-bottom pb-4 d-flex justify-content-between">
                    <div>
                        <h6 class="mb-0 font-weight-bold">添加新成员</h6>
                        <span class="text-muted">晚来天欲雪，能饮一杯无？</span>
                    </div>
                    <div>
                        <button class="btn btn-link text-muted close-chat-sidebar" type="button"><i
                                class="zmdi zmdi-close"></i></button>
                    </div>
                </div>
                <div class="body mt-4">

                    <div class="form-group input-group-lg search mb-3">
                        <i class="zmdi zmdi-search"></i>
                        <input type="text" class="form-control" placeholder="搜索...">
                    </div>

                    <ul class="chat-list">
                        <c:forEach var="friend" varStatus="status" items="${sessionScope.friendsInfo}">
                            <li>
                                <div class="hover_action">
                                    <button type="button" class="btn btn-link text-info"><i
                                            class="zmdi zmdi-plus-circle"></i></button>
                                </div>
                                <a href="#" class="card">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="avatar me-3">
                                                <img class="avatar rounded-circle"
                                                     src="${pageScope.path}/static/dist/assets/images/${friend.profile}"
                                                     alt="avatar">
                                            </div>
                                            <div class="media-body overflow-hidden">
                                                <div class="d-flex align-items-center mb-1">
                                                    <h6 class="text-truncate mb-0 me-auto">${friend.nickname}</h6>
                                                </div>
                                                <div class="text-truncate">
                                                    last seen 2 hours ago
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        </c:forEach>
                        <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                            <span>A</span>
                            <div class="dropdown">
                                <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#"
                                   role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Amelia Green</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 2 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar3.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Ava Green</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 1 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                            <span>C</span>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Charlotte Green</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 6 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Chloe Green</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 3 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Charles Green</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 2 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                            <span>D</span>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">David Green</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 6 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                            <span>M</span>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Michael Green</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 6 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Mohammad</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 6 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                            <span>T</span>
                        </li>
                        <li>
                            <div class="hover_action">
                                <button type="button" class="btn btn-link text-info"><i
                                        class="zmdi zmdi-plus-circle"></i></button>
                            </div>
                            <a href="#" class="card">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="avatar me-3">
                                            <img class="avatar rounded-circle"
                                                 src="${pageScope.path}/static/dist/assets/images/xs/avatar9.jpg"
                                                 alt="avatar">
                                        </div>
                                        <div class="media-body overflow-hidden">
                                            <div class="d-flex align-items-center mb-1">
                                                <h6 class="text-truncate mb-0 me-auto">Tommy Green</h6>
                                            </div>
                                            <div class="text-truncate">
                                                last seen 6 hours ago
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="InviteFriends" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">邀请好友</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="email" class="form-control">
                            <small id="emailHelp" class="form-text text-muted">我们永远不会与其他人共享您的电子邮件。</small>
                        </div>
                    </form>
                    <div class="mt-5">
                        <button type="button" class="btn btn-primary">发送</button>
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

<script type="text/javascript" src="${pageScope.path}/static/js/template.js"></script>

<!-- 调用方法的方法 -->
<script type="text/javascript">

    //按下回车调用click方法
    $("#sendButton").keyup(function(event){
        if(event.keyCode === 13){
            $("#sendButton").trigger("click");
        }
    });

    //发消息按钮添加点击事件
    $(function (){
        $("#sendButton").click(sendMessage);
        //将div滚动条下拉至最下方
        divScroll();
    });

    //发送消息主函数
    function sendMessage(){
        //判断消息输入是否为空
        if (!detectsMessagesIsEmpty()){
            sendMessageAjax();
            divScroll();
        }

    }
    /**
     *通过ajax长轮询进行消息查询
     */
    setInterval(function (){
        getNewMessage();
    },3000);


</script>
<!-- 单一功能方法 -->
<script>


    //ajax获取最新消息
    function getNewMessage(){
        //获取消息ul中最后一条消息的id
        var lastLiID = $('#messageUl li:last-child').attr("id");
        var url = "${pageScope.path}/user/chat/getNewMessage";
        $.ajax({
            url:url,
            type:"post",
            async: false,
            data: {
                chatId:lastLiID,
                loginUserId:"${sessionScope.user.id}",
                friendId:"${requestScope.friendId}",
            },
            success:function (mes){
                //ajax返回的是一个网页，网页中间可能有多个li，添加到ul中即可
                $("#messageUl").append(mes);
            }
        });
    }


    //将div滚动条下拉至最下方
    function divScroll(){
        //获取div对象
        var messageDiv = $("#scrollDIV");
        //设置滚动到最下面
        messageDiv.scrollTop = messageDiv.scrollHeight;
    }

    /**检测消息是否为空
     * 空     ： return-true
     * 不为空 ： return-false
     */
    function detectsMessagesIsEmpty() {
        //获取输入框的文本
        var sendMessage = $("#sendMessage").val();
        if (sendMessage == "" || sendMessage == null){
            $("#sendMessage").html("发送内容不能为空，请重新输入！");
            return true;
        }else{
            return false;
        }
    }
    //ajax
    function sendMessageAjax(){
        var url = "${pageScope.path}/user/chat/saveMessageWithAjax";
        var message = "${sessionScope.user.id}"+","+"${requestScope.chatFriend.id}"+","+$("#sendMessage").val();
        $.ajax({
            url: url,
            type: "post",
            async: false,
            data:{message:message},
            success: function (mes){
                //清空输入框的内容
                $("#sendMessage").val("");
                //ajax返回的是一个网页，网页中间只有一个li，添加到ul中即可
                $("#messageUl").append(mes);
            }
        });
    }

</script>

</body>
</html>
