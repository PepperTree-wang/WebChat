<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    pageContext.setAttribute("path", path);%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>个人中心</title>
<link rel="icon" href="favicon.ico" type="image/x-icon"/>

<link rel="stylesheet" href="${pageScope.path}/static/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
      href="${pageScope.path}/static/dist/assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css">

<link rel="stylesheet" href="${pageScope.path}/static/dist/assets/css/style.min.css">
<body class="admin">
<div id="layout" class="theme-cyan">

<jsp:include page="../include/leftNavigationBar.jsp"></jsp:include>

    <div class="sidebar border-end py-xl-4 py-3 px-xl-4 px-3">
        <div class="tab-content">

            <div class="tab-pane fade show active" id="nav-tab-user" role="tabpanel">
                <jsp:include page="../include/userInformation.jsp"></jsp:include>

            </div>

            <div class="tab-pane fade" id="nav-tab-menu" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h4 class="mb-0 text-primary">Events</h4>
                    <div>
                        <button class="btn btn-dark" type="button">Create New</button>
                    </div>
                </div>

                <div class="form-group input-group-lg search mb-3">
                    <i class="zmdi zmdi-search"></i>
                    <input type="text" class="form-control" placeholder="Search...">
                </div>

                <div class="card mb-1">
                    <div class="card-body">
                        <ul class="menu-list p-0 m-0">
                            <li class="header text-uppercase">Events App</li>
                            <li class="active open"><a href="${pageScope.path}/user/index" class="py-2"><i
                                    class="zmdi zmdi-home me-3"></i><span>Dashboard</span></a></li>
                            <li>
                                <a href="javascript:void(0);" class="py-2 menu-toggle"><i
                                        class="zmdi zmdi-calendar-check me-3"></i><span>Events</span></a>
                                <ul class="ml-menu border-start ps-2 ms-2">
                                    <li><a href="event-all.html">All Events</a></li>
                                    <li><a href="event-draft.html">Draft Events</a></li>
                                    <li><a href="event-my.html">My Events</a></li>
                                    <li><a href="event-calendar.html">Calendar</a></li>
                                </ul>
                            </li>
                            <li><a href="event-members.html" class="py-2"><i
                                    class="zmdi zmdi-accounts-alt me-3"></i><span>Members</span></a></li>
                            <li><a href="event-message.html" class="py-2"><i class="zmdi zmdi-email me-3"></i><span>Message</span></a>
                            </li>
                            <li><a href="index-chat.html" class="py-2"><i class="zmdi zmdi-comment-more me-3"></i><span>Chat App</span></a>
                            </li>
                            <li class="header text-uppercase mt-3">UPCOMING EVENTS</li>
                            <li><a href="#" class="py-2"><i class="zmdi zmdi-star-outline me-3"></i><span
                                    class="text-truncate">Byron Bay Bluesfest</span></a></li>
                            <li><a href="#" class="py-2"><i class="zmdi zmdi-star-outline me-3"></i><span
                                    class="text-truncate">DC Environmental Film Festival</span></a></li>
                            <li><a href="#" class="py-2"><i class="zmdi zmdi-star-outline me-3"></i><span
                                    class="text-truncate">Vancouver Fashion Week</span></a></li>
                        </ul>
                    </div>
                </div>

                <ul class="chat-list mt-3">
                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                        <span>event speaker</span>
                        <div class="dropdown">
                            <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button"
                               data-bs-toggle="dropdown"><i class="zmdi zmdi-plus-circle"></i></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Add New</a>
                                <a class="dropdown-item" href="#">Create Group</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </li>
                    <li class="online">
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media align-items-center">
                                    <div class="avatar sm me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar sm rounded-circle"
                                             src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg"
                                             alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="away">
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media align-items-center">
                                    <div class="avatar sm me-3">
                                        <span class="status rounded-circle"></span>
                                        <img class="avatar sm rounded-circle"
                                             src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg"
                                             alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <h6 class="text-truncate mb-0 me-auto">Michelle Green</h6>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-3">
                                        <div class="avatar sm rounded-circle no-image timber">
                                            <span>UD</span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">UI-Design Group</h6>
                                        </div>
                                        <div class="text-truncate">
                                            <i class="zmdi zmdi-file-text me-1"></i> North Carolina, CT
                                            <div class="avatar-list avatar-list-stacked mt-1">
                                                <img class="avatar xs rounded"
                                                     src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg"
                                                     alt=""
                                                     data-bs-toggle="tooltip" data-placement="top" title="Avatar"
                                                     data-original-title="Sean">
                                                <img class="avatar xs rounded"
                                                     src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg"
                                                     alt=""
                                                     data-bs-toggle="tooltip" data-placement="top" title="Avatar"
                                                     data-original-title="Martin">
                                                <img class="avatar xs rounded"
                                                     src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg"
                                                     alt=""
                                                     data-bs-toggle="tooltip" data-placement="top" title="Avatar"
                                                     data-original-title="Terry">
                                                <img class="avatar xs rounded"
                                                     src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg"
                                                     alt=""
                                                     data-bs-toggle="tooltip" data-placement="top" title="Avatar"
                                                     data-original-title="Michelle">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="tab-pane fade" id="nav-tab-notifications" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h4 class="mb-0 text-primary">Notifications</h4>
                    <div>
                    </div>
                </div>

                <div class="form-group input-group-lg search mb-3">
                    <i class="zmdi zmdi-search"></i>
                    <input type="text" class="form-control" placeholder="Search...">
                </div>

                <ul class="chat-list animation-li-delay">
                    <li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
                        <span>RECENT</span>
                        <div class="dropdown">
                            <a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button"
                               data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                    class="zmdi zmdi-filter-list"></i></a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <img class="avatar sm rounded-circle"
                                             src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg"
                                             alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div>changed an issue from "In Progress" to <span class="badge bg-success">Review</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <div class="avatar sm rounded-circle no-image timber">
                                            <span>UD</span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">UI-Design Group</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
                                        </div>
                                        <div>
                                            <i class="zmdi zmdi-file-text me-1"></i> mentioned you in a comment
                                            <blockquote class="blockquote blockquote-sm ps-2 mt-2 mb-0">
                                                Nice work, love! You really nailed it. Keep it up!
                                            </blockquote>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <img class="avatar sm rounded-circle"
                                             src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg"
                                             alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Michelle Green</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">1DY</p>
                                        </div>
                                        <div>
                                            joined the Slack group HS Team
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <img class="avatar sm rounded-circle"
                                             src="${pageScope.path}/static/dist/assets/images/xs/avatar2.jpg"
                                             alt="avatar">
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto">Elizabeth Martin</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">4DY</p>
                                        </div>
                                        <div class="text-truncate"><i class="zmdi zmdi-file-text me-1"></i> It is a long
                                            established fact that a reader w...
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <div class="avatar sm rounded-circle no-image orange">
                                            <span><i class="zmdi zmdi-check"></i></span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto text-warning">Issue Fixed</h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">5DY</p>
                                        </div>
                                        <div>
                                            WE have fix all Design bug with Responsive
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="card">
                            <div class="card-body">
                                <div class="media">
                                    <div class="avatar sm me-2">
                                        <div class="avatar sm rounded-circle no-image red">
                                            <span><i class="zmdi zmdi-help zmdi-hc-lg"></i></span>
                                        </div>
                                    </div>
                                    <div class="media-body overflow-hidden">
                                        <div class="d-flex align-items-center mb-1">
                                            <h6 class="text-truncate mb-0 me-auto text-danger">Server Warning </h6>
                                            <p class="small text-muted text-nowrap ms-4 mb-0">5DY</p>
                                        </div>
                                        <div>
                                            Your connection is not private
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="tab-pane fade" id="nav-tab-components" role="tabpanel">

                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h4 class="mb-0 text-primary">Components</h4>
                </div>

                <div class="card mb-1">
                    <div class="card-body">
                        <ul class="menu-list p-0 m-0">
                            <li class="header">COMPONENTS</li>
                            <li><a class="py-2" href="ui-alerts.html"><i
                                    class="zmdi zmdi-alert-circle-o me-3"></i><span>Alerts</span></a></li>
                            <li><a class="py-2" href="ui-badges.html"><i
                                    class="zmdi zmdi-label me-3"></i><span>Badges</span></a></li>
                            <li><a class="py-2" href="ui-breadcrumb.html"><i class="zmdi zmdi-label me-3"></i><span>Breadcrumb</span></a>
                            </li>
                            <li><a class="py-2" href="ui-buttons.html"><i
                                    class="zmdi zmdi-label me-3"></i><span>Buttons</span></a></li>
                            <li><a class="py-2" href="ui-card.html"><i
                                    class="zmdi zmdi-label me-3"></i><span>Card's</span></a></li>
                            <li><a class="py-2" href="ui-collapse.html"><i class="zmdi zmdi-label me-3"></i><span>Collapse</span></a>
                            </li>
                            <li><a class="py-2" href="ui-colors.html"><i
                                    class="zmdi zmdi-format-color-fill me-3"></i><span>Colors</span></a></li>
                            <li><a class="py-2" href="ui-dialogs.html"><i
                                    class="zmdi zmdi-label me-3"></i><span>Dialogs</span></a></li>
                            <li><a class="py-2" href="ui-icons.html"><i
                                    class="zmdi zmdi-bookmark me-3"></i><span>Icons</span></a></li>
                            <li><a class="py-2" href="ui-listgroup.html"><i
                                    class="zmdi zmdi-format-list-bulleted me-3"></i><span>List Group</span></a></li>
                            <li><a class="py-2" href="ui-mediaobject.html"><i class="zmdi zmdi-label me-3"></i><span>Media Object</span></a>
                            </li>
                            <li><a class="py-2" href="ui-modals.html"><i
                                    class="zmdi zmdi-label me-3"></i><span>Modals</span></a></li>
                            <li><a class="py-2" href="ui-notifications.html"><i
                                    class="zmdi zmdi-notifications me-3"></i><span>Notifications</span></a></li>
                            <li><a class="py-2" href="ui-progressbars.html"><i
                                    class="zmdi zmdi-circle-o me-3"></i><span>Progress Bars</span></a></li>
                            <li><a class="py-2" href="ui-pagination.html"><i
                                    class="zmdi zmdi-format-list-numbered me-3"></i><span>Pagination</span></a></li>
                            <li><a class="py-2" href="ui-scrollspy.html"><i class="zmdi zmdi-label me-3"></i><span>Scrollspy</span></a>
                            </li>
                            <li><a class="py-2" href="ui-spinners.html"><i class="zmdi zmdi-spinner me-3"></i><span>Spinners</span></a>
                            </li>
                            <li><a class="py-2" href="ui-tabs.html"><i class="zmdi zmdi-tab me-3"></i><span>Tabs</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--网页右侧拓展功能区域-->
    <jsp:include page="../include/expandFunctionAtRight.jsp"></jsp:include>


    <div class="main px-xl-5 px-lg-4 px-3">

        <div class="main-body">

            <div class="body-header border-bottom py-xl-3 py-2">
                <div class="container px-0">
                    <div class="row align-items-center">

                        <div class="col-12">
                            <div class="media">
                                <div class="avatar sm">
                                    <a href="${pageScope.path}/user/index" title="" class="link"><i
                                            class="zmdi zmdi-arrow-left zmdi-hc-lg"></i></a>
                                </div>
                                <div class="media-body overflow-hidden">
                                    <div class="d-flex align-items-center mb-1">
                                        <h6 class="fw-bold text-truncate mb-0 me-auto">个人中心</h6>
                                    </div>
                                    <div class="text-truncate">上次更新时间: 29 Aug 2020</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="body-page d-flex py-xl-3 py-2">
                <div class="container px-0">

                    <div class="row">
                        <div class="col-12">
                            <ul class="nav nav-tabs nav-overflow page-header-tabs mb-4 mt-md-5 mt-3">
                                <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                                        href="#setting-general" role="tab">常规</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-billing"
                                                        role="tab">账户</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-members"
                                                        role="tab">团队</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-security"
                                                        role="tab">安全</a></li>
                                <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#setting-faqs"
                                                        role="tab">帮助</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="tab-content">

                        <div class="tab-pane fade show active" id="setting-general" role="tabpanel">
                            <div class="row">
                                <div class="col-12">
                                    <div class="card mb-4">
                                        <div class="card-header">
                                            <h6 class="card-title mb-0">账户设置</h6>
                                            <span class="text-muted small">更新你的账户设置</span>
                                        </div>
                                        <div class="card-body">

                                            <!-- 更新用户信息Form -->
                                            <form action="${pageScope.path}/user/update" method="post" id="myform"
                                                  enctype="multipart/form-data" class="row g-3">
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" name="name" id="name"
                                                                   class="form-control form-control-lg"
                                                                   value="${sessionScope.user.name}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" name="phone" id="phone"
                                                                   class="form-control form-control-lg"
                                                                   value="${sessionScope.user.phone}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="email" name="email" id="email"
                                                                   class="form-control form-control-lg"
                                                                   value="${sessionScope.user.email}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" name="nickname" id="nickname"
                                                                   class="form-control form-control-lg"
                                                                   value="${sessionScope.user.nickname}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" name="city" id="city"
                                                                   class="form-control form-control-lg"
                                                                   value="${sessionScope.user.city}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div style="display: none" class="col-lg-4 col-md-6 col-sm-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <input type="text" name="profile"
                                                                   readonly="readonly"
                                                                   class="form-control form-control-lg"
                                                                   value="${sessionScope.user.profile}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <label>上传头像</label>
                                                        <input name="profileImg" type="file" class="form-control-file"
                                                               placeholder="大小:0-10M">
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-group">
                                                        <div class="input-group">
                                                            <textarea rows="4" class="form-control"
                                                                      value="个人说明/数据库未涉及"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <input type="submit" value="更新" class="btn btn-primary">

                                                    <a href="${pageScope.path}/user/settings">
                                                        <button type="button" class="btn btn-link">取消</button>
                                                    </a>
                                                </div>
                                            </form>
                                            <!-- 更新个人信息表单结束 -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-between mt-4">
                                <div class="col-12 col-md-6">
                                    <h5>删除账户</h5>
                                    <p class="text-muted mb-md-0">请注意，删除您的帐户是一项永久性操作，一旦完成将无法恢复.</p>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-danger">删除</button>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="setting-billing" role="tabpanel">
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-danger">
                                        <i class="zmdi zmdi-info me-1"></i> You are near your API limits.
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col">
                                                    <h6 class="text-uppercase text-muted mb-1 small">Current plan</h6>
                                                    <span class="h3 mb-0">$39/mo</span>
                                                </div>
                                                <div class="col-auto">
                                                    <a class="btn btn-sm btn-dark" href="pricing.html">Upgrade</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12">

                                    <div class="card mb-4">
                                        <div class="card-header">
                                            <div class="row align-items-center">
                                                <div class="col">

                                                    <h6 class="card-title mb-0">支付方式</h6>
                                                </div>
                                                <div class="col-auto">

                                                    <a class="btn btn-sm btn-primary" href="#!">增加支付方式</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">

                                            <div class="list-group custom list-group-flush my-2">
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <img class="img-fluid"
                                                                 src="${pageScope.path}/static/dist/assets/images/visa.svg"
                                                                 alt="..." style="max-width: 38px;">
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-0">Visa ending in 2222</h6>
                                                            <small class="text-muted">到期： 05/2023</small>
                                                        </div>
                                                        <div class="col-auto mr-n3">
                                                            <span class="badge bg-light">违约</span>
                                                        </div>

                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="dropdown-ellipses dropdown-toggle" href="#"
                                                                   role="button" data-bs-toggle="dropdown"
                                                                   aria-haspopup="true" aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another
                                                                        action</a>
                                                                    <a class="dropdown-item" href="#!">Something else
                                                                        here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <img class="img-fluid"
                                                                 src="${pageScope.path}/static/dist/assets/images/mastercard.svg"
                                                                 alt="..." style="max-width: 38px;">
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-0">Mastercard ending in 9999</h6>
                                                            <small class="text-muted">到期： 10/2026</small>
                                                        </div>

                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="dropdown-ellipses dropdown-toggle" href="#"
                                                                   role="button" data-bs-toggle="dropdown"
                                                                   aria-haspopup="true" aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another
                                                                        action</a>
                                                                    <a class="dropdown-item" href="#!">Something else
                                                                        here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card">
                                        <div class="card-body">
                                            <h6 class="card-title mb-0">发票</h6>
                                        </div>
                                        <div class="table-responsive">
                                            <table class="table table-border table-hover table-nowrap card-table mb-0">
                                                <thead>
                                                <tr>
                                                    <th>发票编号</th>
                                                    <th>日期</th>
                                                    <th>数量</th>
                                                    <th>状态</th>
                                                </tr>
                                                </thead>
                                                <tbody class="font-size-base">
                                                <tr>
                                                    <td>
                                                        <a href="invoices.html">Invoice #10022</a>
                                                    </td>
                                                    <td>
                                                        <time datetime="2020-04-24">2020-10-24</time>
                                                    </td>
                                                    <td>
                                                        $29.00
                                                    </td>
                                                    <td>
                                                        <span class="badge bg-secondary">未支付</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="invoices.html">Invoice #10012</a>
                                                    </td>
                                                    <td>
                                                        <time datetime="2020-03-24">Aug. 11, 2020</time>
                                                    </td>
                                                    <td>
                                                        $29.00
                                                    </td>
                                                    <td>
                                                        <span class="badge bg-success">已支付</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="invoices.html">Invoice #10043</a>
                                                    </td>
                                                    <td>
                                                        <time datetime="2020-02-24">July. 5, 2020</time>
                                                    </td>
                                                    <td>
                                                        $29.00
                                                    </td>
                                                    <td>
                                                        <span class="badge bg-success">已支付</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="invoices.html">Invoice #10045</a>
                                                    </td>
                                                    <td>
                                                        <time datetime="2020-01-24">Jun. 16, 2020</time>
                                                    </td>
                                                    <td>
                                                        $29.00
                                                    </td>
                                                    <td>
                                                        <span class="badge bg-success">已支付</span>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p class="mt-4">
                                <small class="text-muted">Don’t need Dashkit anymore? <a href="#!">Cancel your
                                    account</a></small>
                            </p>
                        </div>

                        <div class="tab-pane fade" id="setting-members" role="tabpanel">
                            <div class="row">
                                <div class="col-12 col-md-6">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col">
                                                    <p class="text-uppercase text-muted small mb-1">Seats used</p>
                                                    <span class="h4 mb-0">4 out of 6</span>
                                                </div>
                                                <div class="col-auto">
                                                    <a class="btn btn-sm btn-outline-primary" href="#!">Upgrade</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col">
                                                    <p class="text-uppercase text-muted small mb-1">Default role</p>
                                                    <span class="h4 mb-0">Staff</span>
                                                </div>
                                                <div class="col-auto">
                                                    <a class="btn btn-sm btn-dark" href="#!">Change</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">

                                    <div class="card">
                                        <div class="card-header d-flex justify-content-between">
                                            <h6 class="card-title">Members</h6>

                                            <div class="dropdown">
                                                <button class="btn btn-sm btn-primary" type="button"
                                                        data-bs-toggle="dropdown">
                                                    Invite member
                                                </button>
                                                <form class="dropdown-menu dropdown-menu-right" style="width: 300px;">
                                                    <div class="card-header">
                                                        <h6 class="card-title mb-0">Invite a member</h6>
                                                        <span class="badge bg-primary">2 seats left</span>
                                                    </div>
                                                    <div class="card-header">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col-3">
                                                                <label class="mb-0">Name</label>
                                                            </div>
                                                            <div class="col">
                                                                <input class="form-control form-control-flush"
                                                                       type="text" placeholder="Full name">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-header">
                                                        <div class="row no-gutters align-items-center">
                                                            <div class="col-3">
                                                                <label class="mb-0">Email</label>
                                                            </div>
                                                            <div class="col">
                                                                <input class="form-control form-control-flush"
                                                                       type="text" placeholder="Email address">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">

                                                        <button class="btn btn-block btn-primary" type="submit">
                                                            Invite member
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="card-body">

                                            <div class="list-group custom list-group-flush my-md-3">
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <a href="#" class="avatar"><img
                                                                    src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg"
                                                                    alt="..." class="avatar rounded-circle"></a>
                                                        </div>
                                                        <div class="col-5 ms-2">
                                                            <h6 class="mb-1"><a href="#">Dianna Smiley</a></h6>
                                                            <p class="small text-muted mb-0">
                                                                <a class="d-block text-reset text-truncate"
                                                                   href="mailt:amelia.green@company.com"><span
                                                                        class="__cf_email__"
                                                                        data-cfemail="f7969a929b9e96d99085929299b794989a8796998ed994989a">[email&#160;protected]</span></a>
                                                            </p>
                                                        </div>
                                                        <div class="col-auto ms-auto mr-md-3">
                                                            <select class="form-control custom-select"
                                                                    data-bs-toggle="select">
                                                                <option value="1">Admin</option>
                                                                <option value="2">Staff</option>
                                                                <option value="3">Custom</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="btn dropdown-toggle" href="#" role="button"
                                                                   data-bs-toggle="dropdown" aria-haspopup="true"
                                                                   aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another
                                                                        action</a>
                                                                    <a class="dropdown-item" href="#!">Something else
                                                                        here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <a href="#" class="avatar"><img
                                                                    src="${pageScope.path}/static/dist/assets/images/xs/avatar2.jpg"
                                                                    alt="..." class="avatar rounded-circle"></a>
                                                        </div>
                                                        <div class="col-5 ms-2">
                                                            <h6 class="mb-1"><a href="#">Dianna Smiley</a></h6>
                                                            <p class="small text-muted mb-0">
                                                                <a class="d-block text-reset text-truncate"
                                                                   href="mailt:charlotte.green@company.com"><span
                                                                        class="__cf_email__"
                                                                        data-cfemail="22414a43504e4d5656470c455047474c62414d4f52434c5b0c414d4f">[email&#160;protected]</span></a>
                                                            </p>
                                                        </div>
                                                        <div class="col-auto ms-auto mr-md-3">
                                                            <select class="form-control custom-select"
                                                                    data-bs-toggle="select">
                                                                <option value="1">Admin</option>
                                                                <option value="2">Staff</option>
                                                                <option value="3">Custom</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="btn dropdown-toggle" href="#" role="button"
                                                                   data-bs-toggle="dropdown" aria-haspopup="true"
                                                                   aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another
                                                                        action</a>
                                                                    <a class="dropdown-item" href="#!">Something else
                                                                        here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <a href="#" class="avatar"><img
                                                                    src="${pageScope.path}/static/dist/assets/images/xs/avatar3.jpg"
                                                                    alt="..." class="avatar rounded-circle"></a>
                                                        </div>
                                                        <div class="col-5 ms-2">
                                                            <h6 class="mb-1"><a href="#">Dianna Smiley</a></h6>
                                                            <p class="small text-muted mb-0">
                                                                <a class="d-block text-reset text-truncate"
                                                                   href="mailt:susie.willis@company.com"><span
                                                                        class="__cf_email__"
                                                                        data-cfemail="added8dec4c883dac4c1c1c4deedcec2c0ddccc3d483cec2c0">[email&#160;protected]</span></a>
                                                            </p>
                                                        </div>
                                                        <div class="col-auto ms-auto mr-md-3">
                                                            <select class="form-control custom-select"
                                                                    data-bs-toggle="select">
                                                                <option value="1">Admin</option>
                                                                <option value="2">Staff</option>
                                                                <option value="3">Custom</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-auto">
                                                            <div class="dropdown">
                                                                <a class="btn dropdown-toggle" href="#" role="button"
                                                                   data-bs-toggle="dropdown" aria-haspopup="true"
                                                                   aria-expanded="false">
                                                                    <i class="zmdi zmdi-more"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-right">
                                                                    <a class="dropdown-item" href="#!">Action</a>
                                                                    <a class="dropdown-item" href="#!">Another
                                                                        action</a>
                                                                    <a class="dropdown-item" href="#!">Something else
                                                                        here</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="setting-security" role="tabpanel">
                            <div class="row justify-content-between mb-4">
                                <div class="col-12 col-md-6">
                                    <h5>修改密码</h5>
                                    <p class="text-muted mb-md-0">请输入密码之后再次确认密码，请务必保证两次密码相同</p>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-warning">忘记密码</button>
                                </div>
                            </div>
                            <div class="row g-3">
                                <div class="col-12">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <form class="row">
                                                <div class="col-lg-4 col-md-12">
                                                    <div class="form-group mb-3">
                                                        <label>现在的密码</label>
                                                        <input type="email" class="form-control">
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>新密码</label>
                                                        <input type="email" class="form-control">
                                                    </div>
                                                    <div class="form-group mb-3">
                                                        <label>确认密码</label>
                                                        <input type="email" class="form-control">
                                                    </div>
                                                    <button type="button" class="btn btn-primary">修改密码
                                                    </button>
                                                    <button type="button" class="btn btn-link">Cancel</button>
                                                </div>
                                                <div class="col-lg-8 col-md-12">

                                                    <div class="card bg-light border">
                                                        <div class="card-body">
                                                            <p class="mb-2">密码要求</p>
                                                            <p class="small text-muted mb-2">要创建新密码，
                                                                您必须满足以下所有要求：</p>

                                                            <ul class="small text-muted ps-4 mb-0">
                                                                <li>密码长度未5-11位</li>
                                                                <li>密码必须由字母开头</li>
                                                                <li>密码可以使用_ . $</li>
                                                                <li>不能与当前的密码相同</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-between mt-4 mb-4">
                                <div class="col-12 col-md-6">
                                    <h5>设备历史记录</h5>
                                    <p class="text-muted mb-md-0">如果你看到一个你认为不是你的装置，
                                        请立即与我们的账户欺诈部门联系。</p>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-dark">注销所有设备</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">

                                    <div class="card mb-4">
                                        <div class="card-body">
                                            <div class="list-group custom list-group-flush my-md-3">
                                                <div class="list-group-item px-0">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar lg text-center"><i
                                                                    class="zmdi zmdi-smartphone h2"></i></div>
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-1">iPhone 11</h6>
                                                            <small class="text-muted">Brownsville, VT ·
                                                                <time>Jun 11 at 10:05am</time>
                                                            </small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-sm btn-white">Sign out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item px-0">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar lg text-center"><i
                                                                    class="zmdi zmdi-desktop-mac h2"></i></div>
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-1">iMac OSX · <span
                                                                    class="font-weight-normal">Safari 10.2</span></h6>
                                                            <small class="text-muted">Ct, Corona, CA ·
                                                                <time>September 14 at 2:30pm</time>
                                                            </small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-sm btn-white">Sign out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item px-0">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar lg text-center"><i
                                                                    class="zmdi zmdi-laptop h2"></i></div>
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-1">HP Laptop Win10</h6>
                                                            <small class="text-muted">Ct, Corona, CA ·
                                                                <time>September 16 at 11:16am</time>
                                                            </small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-sm btn-white">Sign out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="list-group-item px-0">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <div class="avatar lg text-center"><i
                                                                    class="zmdi zmdi-desktop-windows h2"></i></div>
                                                        </div>
                                                        <div class="col ml-n2">
                                                            <h6 class="mb-1">iMac OSX · <span
                                                                    class="font-weight-normal">Edge browser</span></h6>
                                                            <small class="text-muted">Huntington Station, NY ·
                                                                <time>October 26 at 5:16pm</time>
                                                            </small>
                                                        </div>
                                                        <div class="col-auto">
                                                            <button class="btn btn-sm btn-white">Sign out</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="setting-faqs" role="tabpanel">
                            <div class="row">
                                <div class="col-lg-3 col-md-12">
                                    <div class="mb-4">
                                        <h6>Useful tips</h6>
                                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                            sed diam nonummy nibh euismod tincidunt.</p>
                                        <div class="list-group custom">
                                            <a class="list-group-item" href="#"><i
                                                    class="zmdi zmdi-circle small me-2 text-danger"></i>Lorem ipsum</a>
                                            <a class="list-group-item" href="#"><i
                                                    class="zmdi zmdi-circle small me-2 text-info"></i>Consectetuer
                                                adipiscing</a>
                                            <a class="list-group-item" href="#"><i
                                                    class="zmdi zmdi-circle small me-2 text-primary"></i>Sed diam
                                                nonummy</a>
                                            <a class="list-group-item" href="#"><i
                                                    class="zmdi zmdi-circle small me-2 text-warning"></i>Euismod
                                                tincidunt</a>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <h6>Can't find the answer? </h6>
                                        <p class="text-muted">Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                            sed diam nonummy nibh euismod tincidunt.</p>
                                        <a href="#" class="btn btn-primary">Contact us</a>
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-12">

                                    <div class="card">
                                        <div class="card-body">
                                            <h6>General</h6>
                                            <div id="demo-gen-faq" class="accordion border-bottom mb-4">
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-gen-faq1" data-bs-toggle="collapse">Lorem ipsum
                                                            dolor sit amet ?</a>
                                                        <div id="demo-gen-faq1" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-gen-faq2" data-bs-toggle="collapse">Consectetuer
                                                            adipiscing elit ?</a>
                                                        <div id="demo-gen-faq2" class="collapse in py3">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-gen-faq3" data-bs-toggle="collapse">Sed diam
                                                            nonummy nibh euismod tincidunt ?</a>
                                                        <div id="demo-gen-faq3" class="collapse">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-gen-faq4" data-bs-toggle="collapse">Tincidunt ut
                                                            laoreet dolore magna ?</a>
                                                        <div id="demo-gen-faq4" class="collapse">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <h6>Account</h6>
                                            <div id="demo-acc-faq" class="accordion mb-4">
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-acc-faq1" data-bs-toggle="collapse">Lorem ipsum
                                                            dolor sit amet ?</a>
                                                        <div id="demo-acc-faq1" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-acc-faq2" data-bs-toggle="collapse">Consectetuer
                                                            adipiscing elit ?</a>
                                                        <div id="demo-acc-faq2" class="collapse">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-acc-faq3" data-bs-toggle="collapse">Sed diam
                                                            nonummy nibh euismod tincidunt ?</a>
                                                        <div id="demo-acc-faq3" class="collapse">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <h6 class="pad-all bord-btm text-thin">Payment</h6>
                                            <div id="demo-pym-faq" class="accordion">
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-pym-faq1" data-bs-toggle="collapse"
                                                           data-parent="#demo-pym-faq">Lorem ipsum dolor sit amet ?</a>
                                                        <div id="demo-pym-faq1" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-pym-faq2" data-bs-toggle="collapse"
                                                           data-parent="#demo-pym-faq">Consectetuer adipiscing elit
                                                            ?</a>
                                                        <div id="demo-pym-faq2" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-pym-faq3" data-bs-toggle="collapse"
                                                           data-parent="#demo-pym-faq">Sed diam nonummy nibh euismod
                                                            tincidunt ?</a>
                                                        <div id="demo-pym-faq3" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="mb-1">
                                                    <div class="py-2 px-3 bg-light">
                                                        <a href="#demo-pym-faq4" data-bs-toggle="collapse"
                                                           data-parent="#demo-pym-faq">Tincidunt ut laoreet dolore magna
                                                            ?</a>
                                                        <div id="demo-pym-faq4" class="collapse in">
                                                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                                            sed diam nonummy nibh euismod tincidunt ut laoreet dolore
                                                            magna aliquam erat volutpat. Ut wisi enim ad minim veniam,
                                                            quis nostrud exerci tation ullamcorper suscipit lobortis
                                                            nisl ut aliquip ex ea commodo consequat.
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
<script type="text/javascript">
    $(function () {
        //增加失去焦点事件
        $("#name").blur(name);
        $("#nickname").blur(nickname);
        $("#phone").blur(phoneNum);
        $("#email").blur(emailNum);
        //增加表单提交事件
        $("#myform").submit(submitform);

        //设定表单提交
        function submitform() {
            return name() && nickname && phoneNum() && emailNum();
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
        function phoneNum() {
            var objects = $("#phone");
            var sqlname = "phone";
            var rule = /^(13[0-9]|14[01456879]|15[0-35-9]|16[2567]|17[0-8]|18[0-9]|19[0-35-9])\d{8}$/;
            var url = "<%=path%>/user/checkname";
            return check(objects, rule, url, sqlname);
        }

        //检查两次密码是否一致
        function emailNum() {
            var objects = $("#email");
            var sqlname = "email";
            var rule = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
            var url = "<%=path%>/user/checkname";
            return check(objects, rule, url, sqlname);
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
