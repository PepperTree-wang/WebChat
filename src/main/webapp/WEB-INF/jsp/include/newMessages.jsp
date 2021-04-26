<%--
  Created by IntelliJ IDEA.
  User: drago
  Date: 21.4.13
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String path = request.getContextPath();
    pageContext.setAttribute("path", path);%>

<c:forEach var="chat" varStatus="ststus" items="${requestScope.newChats}" >
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