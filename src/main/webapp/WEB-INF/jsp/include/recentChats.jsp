<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: drago
  Date: 2021/3/7
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String path = request.getContextPath();
    pageContext.setAttribute("path", path);%>
<!-- 左侧导航栏 -->
<jsp:include page="leftNavigationBar.jsp"></jsp:include>
<!-- 最近聊天 -->
<div class="sidebar border-end py-xl-4 py-3 px-xl-4 px-3">
    <div class="tab-content">
        <div class="tab-pane fade" id="nav-tab-user" role="tabpanel">
            <jsp:include page="userInformation.jsp"></jsp:include>
        </div>

        <div class="tab-pane fade show active" id="nav-tab-chat" role="tabpanel">

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h3 class="mb-0 text-primary">聊天</h3>
                <div>
                    <button class="btn btn-dark" type="button">新聊天</button>
                </div>
            </div>

            <div class="form-group input-group-lg search mb-3">
                <i class="zmdi zmdi-search"></i>
                <input type="text" class="form-control" placeholder="点击搜索...">
            </div>
            <!-- 联系人列表 -->
            <ul class="chat-list">
                <!-- 文字说明 -->
                <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                    <span>最近</span>
                    <div class="dropdown">
                        <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                class="zmdi zmdi-filter-list"></i></a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <!--功能待定区域-->
                            <a class="dropdown-item" href="#">置顶</a>
                            <a class="dropdown-item" href="#">取消置顶</a>
                            <a class="dropdown-item" href="#">删除聊天框</a>
                            <!--功能待定区域结束-->
                        </div>
                    </div>
                </li>
                <!-- 聊天机器人 -->
                <li>
                    <a href="bot-chat.jsp" class="card">
                        <div class="card-body">
                            <div class="media">
                                <div class="avatar me-3">
                                    <div class="avatar rounded-circle no-image bg-primary text-light">
                                        <span><i class="zmdi zmdi-comment-text"></i></span>
                                    </div>
                                </div>
                                <div class="media-body overflow-hidden">
                                    <div class="d-flex align-items-center mb-1">
                                        <h6 class="text-truncate mb-0 me-auto">WebChat小秘书</h6>
                                    </div>
                                    <div class="text-truncate">
                                        <i class="zmdi zmdi-circle text-success"></i> Online
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
<c:forEach var="chat" varStatus="status" items="${requestScope.recentChat}">
                <!-- 用户列表，在线class：online;离线class:away;群聊无class -->
                <li class="online">
                    <!--聊天框功能div：设为查看，收藏（置顶），删除聊天框-->
                    <div class="hover_action">
                        <button type="button" class="btn btn-link text-info">   <i class="zmdi zmdi-eye"></i></button>
                        <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
                        <button type="button" class="btn btn-link text-danger"> <i class="zmdi zmdi-delete"></i></button>
                    </div>
                    <!--同时需要变更聊天框的边框-->
                    <a href="${pageScope.path}/user/chat/singleChat?id=${chat.host.id eq sessionScope.user.id ?chat.friend.id:chat.host.id}"
                        class="card">
                        <div class="card-body">
                            <div class="media">
                                <div class="avatar me-3">
                                    <span class="status rounded-circle"></span>
                                    <!--好友头像-->
                                    <img class="avatar rounded-circle"
                                         src="${pageScope.path}/static/dist/assets/images/${chat.host.id eq sessionScope.user.id ? chat.friend.profile:chat.host.profile}"
                                         alt="avatar">
                                </div>
                                <div class="media-body overflow-hidden">
                                    <div class="d-flex align-items-center mb-1">
                                        <!--好友nickname-->
                                        <h6 class="text-truncate mb-0 me-auto">${chat.host.id eq sessionScope.user.id ? chat.friend.nickname:chat.host.nickname}</h6>
                                        <!--上一条聊天记录的时间-->
                                        <p class="small text-muted text-nowrap ms-4 mb-0">${chat.time}</p>
                                    </div>
                                    <!--上一条聊天记录的部分内容-->
                                    <div class="text-truncate">
                                        <c:choose>
                                            <c:when test="${fn:length(chat.content) gt 15}">
                                                ${fn:substring(chat.content,0,15)}...
                                            </c:when>
                                            <c:otherwise>
                                                ${chat.content}
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
</c:forEach>

            </ul>
        </div>

        <div class="tab-pane fade" id="nav-tab-phone" role="tabpanel">

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h3 class="mb-0 text-primary">电话</h3>
                <div>
                    <button class="btn btn-dark" type="button">打电话</button>
                </div>
            </div>

            <div class="form-group input-group-lg search mb-3">
                <i class="zmdi zmdi-search"></i>
                <input type="text" class="form-control" placeholder="点击搜索...">
            </div>

            <ul class="chat-list">
                <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                    <span>最近沟通</span>
                    <div class="dropdown">
                        <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="hover_action">
                        <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                        <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                        </button>
                        <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                        </button>
                    </div>
                    <a href="#" class="card">
                        <div class="card-body">
                            <div class="media">
                                <div class="avatar me-3">
                                    <img class="avatar rounded-circle"
                                         src="${pageScope.path}/static/dist/assets/images/xs/avatar10.jpg"
                                         alt="avatar">
                                </div>
                                <div class="media-body overflow-hidden">
                                    <div class="d-flex align-items-center mb-1">
                                        <h6 class="text-truncate mb-0 me-auto">Michelle Green</h6>
                                    </div>
                                    <div class="text-truncate">
                                        <i class="zmdi zmdi-phone-missed me-1"></i> Yesterday at 6:08 PM
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <div class="hover_action">
                        <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                        <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                        </button>
                        <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                        </button>
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
                                        <h6 class="text-truncate mb-0 me-auto">Jane Hunt</h6>
                                    </div>
                                    <div class="text-truncate">
                                        <i class="zmdi zmdi-phone-missed me-1"></i> Yesterday at 6:08 PM
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <div class="hover_action">
                        <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                        <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                        </button>
                        <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                        </button>
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
                                        <h6 class="text-truncate mb-0 me-auto">Susie Willis</h6>
                                    </div>
                                    <div class="text-truncate">
                                        <i class="zmdi zmdi-phone-missed me-1"></i> Yesterday at 6:08 PM
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <div class="hover_action">
                        <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                        <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                        </button>
                        <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                        </button>
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
                                        <h6 class="text-truncate mb-0 me-auto">Marshall Nichols</h6>
                                    </div>
                                    <div class="text-truncate">
                                        <i class="zmdi zmdi-phone-forwarded me-1"></i> Yesterday at 6:08 PM
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <div class="hover_action">
                        <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                        <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                        </button>
                        <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                        </button>
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
                                        <h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
                                    </div>
                                    <div class="text-truncate">
                                        <i class="zmdi zmdi-phone-missed me-1"></i> Yesterday at 6:08 PM
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
                <li>
                    <div class="hover_action">
                        <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                        <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                        </button>
                        <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                        </button>
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
                                        <h6 class="text-truncate mb-0 me-auto">Darryl Day</h6>
                                    </div>
                                    <div class="text-truncate">
                                        <i class="zmdi zmdi-phone-forwarded me-1"></i> Yesterday at 6:08 PM
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
            </ul>
        </div>

        <div class="tab-pane fade" id="nav-tab-contact" role="tabpanel">

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h3 class="mb-0 text-primary">联系人</h3>
                <div>
                    <button class="btn btn-dark" type="button" data-toggle="modal" data-target="#InviteFriends">
                        添加好友
                    </button>
                </div>
            </div>

            <div class="form-group input-group-lg search mb-3">
                <i class="zmdi zmdi-search"></i>
                <input type="text" class="form-control" placeholder="Search...">
            </div>

            <!-- 在不考虑排序情况下显示所有用户 -->
            <ul class="chat-list">
                <c:forEach var="friend" varStatus="status" items="${requestScope.friendsInfo}">
                    <li>
                        <div class="hover_action">
                            <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
                            <button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i>
                            </button>
                            <button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i>
                            </button>
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
                                            <!--后期可以显示部分个人签名-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </c:forEach>

            </ul>
        </div>

        <div class="tab-pane fade" id="nav-tab-pages" role="tabpanel">

            <div class="d-flex justify-content-between align-items-center mb-4">
                <h3 class="mb-0 text-primary">Pages</h3>
            </div>

            <div class="card border-0">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item border-0 mt-3">
                        <a class="link" href="../signin.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Sign in</a>
                    </li>
                    <li class="list-group-item border-0">
                        <a class="link" href="../signup.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Sign up</a>
                    </li>
                    <li class="list-group-item border-0">
                        <a class="link" href="password-reset.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Reset
                            Password</a>
                    </li>
                    <li class="list-group-item border-0">
                        <a class="link" href="${pageScope.path}/user/settings"><i
                                class="zmdi zmdi-label-alt me-2"></i> Settings</a>
                    </li>
                    <li class="list-group-item border-0">
                        <a class="link" href="single-chat.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Single Chat
                            Room</a>
                    </li>
                    <li class="list-group-item border-0">
                        <a class="link" href="group-chat.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Group Chat
                            Room</a>
                    </li>
                    <li class="list-group-item border-0">
                        <a class="link" href="audio-call.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Audio Call
                            Room</a>
                    </li>
                    <li class="list-group-item border-0">
                        <a class="link" href="video-call.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Video Call
                            Room</a>
                    </li>
                    <li class="list-group-item mb-3">
                        <a class="link" href="${pageScope.path}/static/doc/index.html"><i
                                class="zmdi zmdi-label-alt me-2"></i> Documentation</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>