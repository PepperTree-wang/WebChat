<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); pageContext.setAttribute("path",path);%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Responsive Bootstrap 4 and web Application ui kit.">
<title>:: PostMan :: Chat Application</title>
<link rel="icon" href="favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="${pageScope.path}/static/fonts/material-icon/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href="${pageScope.path}/static/dist/assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css">

<link rel="stylesheet" href="${pageScope.path}/static/dist/assets/css/style.min.css">
<body>
<div id="layout" class="theme-cyan">

<div class="navigation navbar justify-content-center py-xl-4 py-md-3 py-0 px-3">

<a href="index.jsp" class="brand" title="Postman">
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 46 46" fill="none">
<g id="logo-icon-color">
<path id="Vector" d="M26.4966 6.01307V2.00436L22.9746 0L19.5029 2.00436V6.01307L22.9746 8.01743L26.4966 6.01307Z" fill="#4539CF" />
<path id="Vector_2" d="M34.7989 10.8235V6.81477L31.3272 4.81042L27.8555 6.81477V10.8235L31.3272 12.8279L34.7989 10.8235Z" fill="#4539CF" />
<path id="Vector_3" d="M43 15.4837V11.4749L39.5283 9.47058L36.0063 11.4749V15.4837L39.5283 17.488L43 15.4837Z" fill="#4539CF" />
<path id="Vector_4" d="M43 25.0043V20.9956L39.5283 18.9913L36.0063 20.9956V25.0043L39.5283 27.0087L43 25.0043Z" fill="#4539CF" />
<path id="Vector_5" d="M33.9935 19.9935V16.9368L31.3269 15.4336L28.6602 16.9368V19.9935L31.3269 21.5469L33.9935 19.9935Z" fill="#4539CF" />
<path id="Vector_6" d="M33.9935 29.5142V26.4575L31.3269 24.9041L28.6602 26.4575V29.5142L31.3269 31.0174L33.9935 29.5142Z" fill="#4539CF" />
<path id="Vector_7" d="M15.931 19.6928V17.2876L13.8178 16.085L11.7549 17.2876V19.6928L13.8178 20.8453L15.931 19.6928Z" fill="#4539CF" />
<path id="Vector_8" d="M15.931 29.1634V26.7582L13.8178 25.5555L11.7549 26.7582V29.1634L13.8178 30.366L15.931 29.1634Z" fill="#4539CF" />
<path id="Vector_9" d="M6.4717 24.0022V21.9978L4.76101 20.9956L3 21.9978V24.0022L4.76101 25.0044L6.4717 24.0022Z" fill="#4539CF" />
<path id="Vector_10" d="M43 34.4749V30.4662L39.5283 28.4619L36.0063 30.4662V34.4749L39.5283 36.4793L43 34.4749Z" fill="#4539CF" />
<path id="Vector_11" d="M25.9433 15.1329V11.8758L23.1257 10.2222L20.2578 11.8758V15.1329L23.1257 16.7865L25.9433 15.1329Z" fill="#4539CF" />
<path id="Vector_12" d="M25.9433 34.1242V30.8671L23.1257 29.2135L20.2578 30.8671V34.1242L23.1257 35.7778L25.9433 34.1242Z" fill="#4539CF" />
<path id="Vector_13" d="M25.4908 24.3529V21.597L23.126 20.244L20.7109 21.597V24.3529L23.126 25.756L25.4908 24.3529Z" fill="#4539CF" />
<path id="Vector_14" d="M34.7989 39.1852V35.1765L31.3272 33.1721L27.8555 35.1765V39.1852L31.3272 41.1896L34.7989 39.1852Z" fill="#4539CF" />
<path id="Vector_15" d="M16.6856 10.2222V6.91507L13.8176 5.26147L10.9497 6.91507V10.2222L13.8176 11.8257L16.6856 10.2222Z" fill="#4539CF" />
<path id="Vector_16" d="M6.22013 12.9782V11.1242L4.61006 10.1721L3 11.1242V12.9782L4.61006 13.9303L6.22013 12.9782Z" fill="#4539CF" />
<path id="Vector_17" d="M26.4966 43.9956V39.9868L22.9746 37.9825L19.5029 39.9868V43.9956L22.9746 45.9999L26.4966 43.9956Z" fill="#4539CF" />
<path id="Vector_18" d="M16.6856 39.0849V35.7777L13.8176 34.1241L10.9497 35.7777V39.0849L13.8176 40.7385L16.6856 39.0849Z" fill="#4539CF" />
<path id="Vector_19" d="M7.5283 34.8257V32.22L5.26415 30.9172L3 32.22V34.8257L5.26415 36.1285L7.5283 34.8257Z" fill="#4539CF" />
</g>
</svg>
 </a>
<div class="nav flex-md-column nav-pills flex-grow-1" role="tablist" aria-orientation="vertical">
<a class="mb-xl-3 mb-md-2 nav-link" data-toggle="pill" href="#nav-tab-user" role="tab">
<img src="${pageScope.path}/static/dist/assets/images/user.png" class="avatar sm rounded-circle" alt="user avatar" />
</a>
<a class="mb-xl-3 mb-md-2 nav-link active" data-toggle="pill" href="#nav-tab-chat" role="tab"><i class="zmdi zmdi-comment-alt"></i></a>
<a class="mb-xl-3 mb-md-2 nav-link" data-toggle="pill" href="#nav-tab-phone" role="tab"><i class="zmdi zmdi-phone"></i></a>
<a class="mb-xl-3 mb-md-2 nav-link" data-toggle="pill" href="#nav-tab-contact" role="tab"><i class="zmdi zmdi-account-circle"></i></a>
<a class="mb-xl-3 mb-md-2 nav-link d-none d-sm-block flex-grow-1" data-toggle="pill" href="#nav-tab-pages" role="tab"><i class="zmdi zmdi-layers"></i></a>
<a class="mt-xl-3 mt-md-2 nav-link light-dark-toggle" href="javascript:void(0);">
<i class="zmdi zmdi-brightness-2"></i>
<input class="light-dark-btn" type="checkbox">
</a>
<a class="mt-xl-3 mt-md-2 nav-link d-none d-sm-block" href="settings.jsp" role="tab"><i class="zmdi zmdi-settings"></i></a>
</div>

<button type="submit" class="btn sidebar-toggle-btn shadow-sm"><i class="zmdi zmdi-menu"></i></button>
</div>


<div class="sidebar border-end py-xl-4 py-3 px-xl-4 px-3">
<div class="tab-content">

<div class="tab-pane fade" id="nav-tab-user" role="tabpanel">

<div class="d-flex justify-content-between align-items-center mb-4">
<h3 class="mb-0 text-primary">Profile</h3>
<div>
<a href="../signin.jsp" title="" class="btn btn-dark">Sign Out</a>
</div>
</div>

<div class="form-group input-group-lg search mb-3">
<i class="zmdi zmdi-search"></i>
<i class="zmdi zmdi-dialpad"></i>
<input type="text" class="form-control" placeholder="Search...">
</div>

<div class="card border-0 text-center pt-3 mb-4">
<div class="card-body">
<div class="card-user-avatar">
<img src="${pageScope.path}/static/dist/assets/images/user.png" alt="avatar" />
<button type="button" class="btn btn-secondary btn-sm"><i class="zmdi zmdi-edit"></i></button>
</div>
<div class="card-user-detail mt-4">
<h5>Michelle Green</h5>
<span class="text-muted"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="3c51555f5459505059125b4e5959527c5b515d5550125f5351">[email&#160;protected]</a></span>
<p>+14 123 456 789 - New york (USA)</p>
<div class="social">
<a class="icon p-2" href="#" data-toggle="tooltip" title="Facebook"><i class="zmdi zmdi-facebook-box"></i></a>
<a class="icon p-2" href="#" data-toggle="tooltip" title="Github"><i class="zmdi zmdi-github-box"></i></a>
<a class="icon p-2" href="#" data-toggle="tooltip" title="Linkedin"><i class="zmdi zmdi-linkedin-box"></i></a>
<a class="icon p-2" href="#" data-toggle="tooltip" title="Instagram"><i class="zmdi zmdi-instagram"></i></a>
</div>
</div>
</div>
</div>

<div class="card border-0">
<ul class="list-group custom list-group-flush">
 
<li class="list-group-item d-flex justify-content-between align-items-center">
<span>Color scheme</span>
<ul class="choose-skin list-unstyled mb-0">
<li data-theme="indigo" data-toggle="tooltip" title="Theme-Indigo"><div class="indigo"></div></li>
<li class="active" data-theme="cyan" data-toggle="tooltip" title="Theme-Cyan"><div class="cyan"></div></li>
<li data-theme="green" data-toggle="tooltip" title="Theme-Green"><div class="green"></div></li>
<li data-theme="blush" data-toggle="tooltip" title="Theme-Blush"><div class="blush"></div></li>
<li data-theme="dark" data-toggle="tooltip" title="Theme-Dark"><div class="dark"></div></li>
</ul>
</li>
<li class="list-group-item d-flex justify-content-between align-items-center">
<span>Desktop notifications</span>
<label class="c_checkbox">
<input type="checkbox" checked="">
<span class="checkmark"></span>
</label>
</li>
<li class="list-group-item d-flex justify-content-between align-items-center">
<span>Sound notifications</span>
<label class="c_checkbox">
<input type="checkbox">
<span class="checkmark"></span>
</label>
</li>
<li class="list-group-item border-0 mt-2">
<a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> Need Help? Let's chat</a>
</li>
<li class="list-group-item border-0">
<a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> Knowledgebase</a>
</li>
<li class="list-group-item border-0">
<a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> english (United States)</a>
</li>
<li class="list-group-item mb-2">
<a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> Browser & App Sessions</a>
</li>
</ul>

<div class="card-body text-center border-top">
<button type="button" class="btn btn-secondary">Update Profile</button>
</div>
</div>
</div>

<div class="tab-pane fade show active" id="nav-tab-chat" role="tabpanel">

<div class="d-flex justify-content-between align-items-center mb-4">
<h3 class="mb-0 text-primary">Chat</h3>
<div>
<button class="btn btn-dark" type="button">New Chat</button>
</div>
</div>

<div class="form-group input-group-lg search mb-3">
<i class="zmdi zmdi-search"></i>
<i class="zmdi zmdi-dialpad"></i>
<input type="text" class="form-control" placeholder="Search...">
</div>

<ul class="chat-list">
<li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
<span>RECENT CHATS</span>
 <div class="dropdown">
<a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zmdi zmdi-filter-list"></i></a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Action</a>
<a class="dropdown-item" href="#">Another action</a>
<a class="dropdown-item" href="#">Something else here</a>
</div>
</div>
</li>
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
<h6 class="text-truncate mb-0 me-auto">Support ChatBot</h6>
</div>
<div class="text-truncate">
<i class="zmdi zmdi-circle text-success"></i> Online
</div>
</div>
</div>
</div>
</a>
</li>
<li class="online">
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="singleChat.jsp" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
</div>
<div class="text-truncate">It is a long established fact that a reader w...</div>
</div>
</div>
</div>
</a>
</li>
<li class="online active">
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="group-chat.jsp" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<div class="avatar rounded-circle no-image timber">
<span>UD</span>
</div>
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">UI-Design Group</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
</div>
<div class="text-truncate">
<i class="zmdi zmdi-file-text me-1"></i> It is a long established fact that a reader w...
<div class="avatar-list avatar-list-stacked mt-1">
<img class="avatar xs rounded" src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg" data-toggle="tooltip" data-placement="top" title="Sean">
<img class="avatar xs rounded" src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg" data-toggle="tooltip" data-placement="top" title="Martin">
<img class="avatar xs rounded" src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg" data-toggle="tooltip" data-placement="top" title="Terry">
<img class="avatar xs rounded" src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg" data-toggle="tooltip" data-placement="top" title="Michelle">
</div>
</div>
</div>
</div>
</div>
</a>
</li>
<li class="away">
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="single-chat-2.jsp" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Michelle Green</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
</div>
<div class="text-truncate">What Can i do right now?</div>
</div>
</div>
</div>
</a>
</li>
<li>
<div class="hover_action">
 <button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar2.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Elizabeth Martin <span class="badge badge-info">4</span></h6>
<p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
</div>
<div class="text-truncate"><i class="zmdi zmdi-file-text me-1"></i> It is a long established fact that a reader w...</div>
</div>
</div>
</div>
</a>
</li>
<li class="online">
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar3.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">David Wallace</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
</div>
<div class="text-truncate">
<div class="wave">
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>
</div>
</div>
</div>
</div>
</div>
</a>
</li>
<li class="away">
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Sean Black</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
</div>
<div class="text-truncate"><i class="zmdi zmdi-phone-end me-1"></i> It is a long established fact that a reader w...</div>
</div>
</div>
</div>
</a>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Terry Carter</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">16-07-2020</p>
</div>
<div class="text-truncate">Hello, Terry are you there?</div>
</div>
</div>
</div>
</a>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<div class="avatar rounded-circle no-image cyan">
<span>MS</span>
</div>
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Michelle Schultz</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">13-07-2020</p>
</div>
<div class="text-truncate">
<i class="zmdi zmdi-file-text me-1"></i> Meeting start in 20min please be ready...
</div>
</div>
</div>
</div>
</a>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<div class="avatar rounded-circle no-image green">
<span>RG</span>
</div>
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">React Group</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">11:08 am</p>
</div>
<div class="text-truncate">
It is a long established fact that a reader w...
<div class="avatar-list avatar-list-stacked mt-1">
<img class="avatar xs rounded" src="${pageScope.path}/static/dist/assets/images/xs/avatar7.jpg" data-toggle="tooltip" data-placement="top" title="Sean">
<img class="avatar xs rounded" src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg" data-toggle="tooltip" data-placement="top" title="Martin">
</div>
</div>
</div>
</div>
</div>
</a>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg" alt="avatar">
</div>
 <div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Terry Carter</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">16-07-2020</p>
</div>
<div class="text-truncate">Hello, Terry are you there?</div>
</div>
</div>
</div>
</a>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<span class="status rounded-circle"></span>
<div class="avatar rounded-circle no-image cyan">
<span>MS</span>
</div>
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Michelle Schultz</h6>
<p class="small text-muted text-nowrap ms-4 mb-0">13-07-2020</p>
</div>
<div class="text-truncate">
<i class="zmdi zmdi-file-text me-1"></i> Meeting start in 20min please be ready...
</div>
</div>
</div>
</div>
</a>
</li>
</ul>
</div>

<div class="tab-pane fade" id="nav-tab-phone" role="tabpanel">

<div class="d-flex justify-content-between align-items-center mb-4">
<h3 class="mb-0 text-primary">Call</h3>
<div>
<button class="btn btn-dark" type="button">New Call</button>
</div>
</div>

<div class="form-group input-group-lg search mb-3">
<i class="zmdi zmdi-search"></i>
<i class="zmdi zmdi-dialpad"></i>
<input type="text" class="form-control" placeholder="Search...">
</div>

<ul class="chat-list">
<li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
<span>RECENT CALL</span>
<div class="dropdown">
<a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
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
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar10.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar9.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
 <img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg" alt="avatar">
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
<h3 class="mb-0 text-primary">Contact</h3>
<div>
<button class="btn btn-dark" type="button" data-toggle="modal" data-target="#InviteFriends">Invite Friends</button>
</div>
</div>

<div class="form-group input-group-lg search mb-3">
<i class="zmdi zmdi-search"></i>
<i class="zmdi zmdi-dialpad"></i>
<input type="text" class="form-control" placeholder="Search...">
</div>

<ul class="chat-list">
<li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
<span>A</span>
<div class="dropdown">
<a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
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
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar3.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar9.jpg" alt="avatar">
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
<a class="link" href="password-reset.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Reset Password</a>
</li>
<li class="list-group-item border-0">
<a class="link" href="settings.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Settings</a>
</li>
<li class="list-group-item border-0">
<a class="link" href="singleChat.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Single Chat Room</a>
</li>
<li class="list-group-item border-0">
<a class="link" href="group-chat.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Group Chat Room</a>
</li>
<li class="list-group-item border-0">
<a class="link" href="audio-call.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Audio Call Room</a>
</li>
<li class="list-group-item border-0">
<a class="link" href="video-call.jsp"><i class="zmdi zmdi-label-alt me-2"></i> Video Call Room</a>
</li>
<li class="list-group-item mb-3">
<a class="link" href="${pageScope.path}/static/${pageScope.path}/static/doc/index.html"><i class="zmdi zmdi-label-alt me-2"></i> Documentation</a>
</li>
</ul>
</div>
</div>
</div>
</div>

 
<div class="rightbar d-none d-md-block">

<div class="nav flex-column nav-pills border-start py-xl-4 py-3 h-100">
<a class="nav-link mb-2 text-center rightbar-link" data-toggle="pill" href="#tab-calendar"><i class="zmdi zmdi-calendar"></i></a>
<a class="nav-link mb-2 text-center rightbar-link" data-toggle="pill" href="#tab-note"><i class="zmdi zmdi-lamp"></i></a>
<a class="nav-link mb-2 text-center rightbar-link" data-toggle="pill" href="#tab-task"><i class="zmdi zmdi-comment-edit"></i></a>
<a class="nav-link mb-2 text-center rightbar-link" data-toggle="pill" href="#tab-github"><i class="zmdi zmdi-github"></i></a>
<a class="nav-link mb-2 text-center" href="#"><i class="zmdi zmdi-plus"></i></a>
</div>
<div class="tab-content py-xl-4 py-3 px-xl-4 px-3">

<div class="tab-pane fade" id="tab-calendar" role="tabpanel">
<div class="header border-bottom pb-4 d-flex justify-content-between">
<div>
<h6 class="mb-0 font-weight-bold">Calendar</h6>
<span class="text-muted">Update your profile details</span>
</div>
<div>
<button class="btn btn-link close-sidebar text-muted" type="button"><i class="zmdi zmdi-close"></i></button>
</div>
</div>
<div class="body mt-4">
<div id="mini-calendar"></div>
</div>
</div>

<div class="tab-pane fade" id="tab-note" role="tabpanel">
<div class="header border-bottom pb-4 d-flex justify-content-between">
<div>
<h6 class="mb-0 font-weight-bold">My Notes</h6>
<span class="text-muted">Update your profile details</span>
</div>
<div>
<button class="btn btn-link close-sidebar text-muted" type="button"><i class="zmdi zmdi-close"></i></button>
</div>
</div>
<div class="body mt-4">
<div class="add-note">
<form>
<div class="input-group mb-2">
<textarea rows="3" class="form-control" placeholder="Enter a note here.."></textarea>
</div>
<button type="submit" class="btn btn-primary addnote">Add</button>
</form>
<ul class="list-unstyled mt-4">
<li class="card border-0 mb-2">
<span>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</span>
<button class="btn btn-sm btn-link"><i class="zmdi zmdi-delete text-danger"></i></button>
</li>
<li class="card border-0 mb-2">
<span>Contrary to popular belief, Lorem Ipsum is not simply random text.</span>
<button class="btn btn-sm btn-link"><i class="zmdi zmdi-delete text-danger"></i></button>
</li>
</ul>
</div>
</div>
</div>

<div class="tab-pane fade" id="tab-task" role="tabpanel">
<div class="header border-bottom pb-4 d-flex justify-content-between">
<div>
<h6 class="mb-0 font-weight-bold">My Task List</h6>
<span class="text-muted">Update your profile details</span>
</div>
<div>
<button class="btn btn-link close-sidebar text-muted" type="button"><i class="zmdi zmdi-close"></i></button>
</div>
</div>
<div class="body mt-4">
<div class="todo-list">
<ul class="list-unstyled todo-list-items">
<li>
<label class="c_checkbox">
<input type="checkbox">
<span class="checkmark"></span>
<span class="ms-2">Update new code on github</span>
</label>
<button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i></button>
</li>
<li>
<label class="c_checkbox">
<input type="checkbox">
<span class="checkmark"></span>
<span class="ms-2">Meeting with design team and updates</span>
</label>
<button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i></button>
</li>
<li>
<label class="c_checkbox">
<input type="checkbox">
<span class="checkmark"></span>
<span class="ms-2">Send project zip file to developer</span>
</label>
<button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i></button>
</li>
<li>
<label class="c_checkbox">
<input type="checkbox">
<span class="checkmark"></span>
<span class="ms-2">Create new design psd for onepage</span>
</label>
<button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i></button>
</li>
</ul>
<form class="add-items">
<div class="input-group mb-2">
<textarea rows="3" class="form-control" placeholder="What do you need to do today?"></textarea>
</div>
<button class="add btn btn-primary" type="submit">Add to List</button>
</form>
</div>
</div>
</div>

<div class="tab-pane fade" id="tab-github" role="tabpanel">
<div class="header border-bottom pb-4 d-flex justify-content-between">
<div>
<h6 class="mb-0 font-weight-bold">My Github Activity</h6>
<span class="text-muted">puffintheme</span>
</div>
<div>
<button class="btn btn-link close-sidebar text-muted" type="button"><i class="zmdi zmdi-close"></i></button>
</div>
</div>
<div class="body mt-4">
<div class="card mb-4">
<div class="card-body">
<div class="row align-items-center">
<div class="col">
<div class="d-flex align-items-center">
<img src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg" data-toggle="tooltip" title="" alt="Avatar" class="rounded-circle avatar" data-original-title="Avatar Name">
<div class="ms-3">
<a href="#" title="">Michelle Green</a>
<p class="mb-0"><a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="2d40444e4548414148034a5f4848436d48554c405d4148034e4240">[email&#160;protected]</a></p>
</div>
</div>
</div>

<div class="col-auto">
<div class="dropdown">
<a href="#" class="btn btn-link btn-sm dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" data-expanded="false">
<i class="zmdi zmdi-more-vert zmdi-hc-lg"></i>
</a>
<div class="dropdown-menu dropdown-menu-right">
<a href="#!" class="dropdown-item">Action</a>
<a href="#!" class="dropdown-item">Another action</a>
<a href="#!" class="dropdown-item">Something else here</a>
</div>
</div>
</div>
</div>
<div class="form-group mt-3 mb-3">
<textarea rows="3" class="form-control no-resize" placeholder="Please type what you want..."></textarea>
</div>
<div class="align-right">
<button class="btn btn-primary">Push</button>
<button class="btn btn-link"><i class="zmdi zmdi-attachment text-muted"></i></button>
<button class="btn btn-link"><i class="zmdi zmdi-camera text-muted"></i></button>
<button class="btn btn-link"><i class="zmdi zmdi-mood text-muted"></i></button>
</div>
</div>
</div>
<ol class="activity-feed p-0 ms-3 mb-0 pt-5">
<li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="5 hours ago" data-color="yellow">
<div class="card mb-3">
<div class="card-body">
<input type="checkbox" id="expand_1" name="expand_1">
<label for="expand_1" class="mb-0">
<b>Request</b> code merge in git
</label>
<div class="feed-content">
<p><b>comments</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
</div>
</div>
</div>
</li>
<li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="7 hours ago" data-color="green">
<div class="card mb-3">
<div class="card-body">
<input type="checkbox" id="expand_2" name="expand_2">
<label for="expand_2" class="mb-0">
<b>Update</b> React app login page code
</label>
<div class="feed-content">
<p><b>comments</b> Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
</div>
</div>
</div>
</li>
 <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="December 2020" data-color="green">
<div class="card mb-3">
<div class="card-body">
<input type="checkbox" id="expand_3" name="expand_3">
<label for="expand_3" class="mb-0">
2 contributions in private repositories
</label>
<div class="feed-content">
<span><a href="#">puffintheme/Allima-v0.1</a> 12 commits</span>
</div>
</div>
</div>
</li>
<li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="December 2020" data-color="dark">
<div class="card mb-3">
<div class="card-body">
<input type="checkbox" id="expand_4" name="expand_4">
<label for="expand_4" class="mb-0">
<b>PostMan</b> Create a new project
</label>
<div class="feed-content">
<h2>BOOM!</h2>
</div>
</div>
</div>
</li>
</ol>
</div>
</div>
</div>
</div>


<div class="main px-xl-5 px-lg-4 px-3">

<div class="chat-body">

<div class="chat-header border-bottom py-xl-4 py-md-3 py-2">
<div class="container-xxl">
<div class="row align-items-center">

<div class="col-6 col-xl-4">
<div class="media">
<div class="avatar me-3 show-user-detail" data-toggle="tooltip" title="Group details">
<div class="avatar rounded-circle no-image timber">
<span>UD</span>
</div>
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">UI-Design Group</h6>
</div>
<div class="text-truncate">4 members participants</div>
</div>
</div>
</div>

<div class="col-6 col-xl-8 text-end">
<ul class="nav justify-content-end">
<li class="nav-item list-inline-item d-none d-md-block me-3">
<a href="#" class="nav-link text-muted px-3" data-toggle="collapse" data-target="#chat-search-div" aria-expanded="true" title="Search this chat">
<i class="zmdi zmdi-search zmdi-hc-lg"></i>
</a>
</li>
<li class="nav-item list-inline-item d-none d-sm-block me-3">
<a href="#" class="nav-link text-muted px-3" data-toggle="tooltip" title="Video Call">
<i class="zmdi zmdi-videocam zmdi-hc-lg"></i>
 </a>
</li>
<li class="nav-item list-inline-item d-none d-sm-block me-3">
<a href="#" class="nav-link text-muted px-3" data-toggle="tooltip" title="Call">
<i class="zmdi zmdi-phone-forwarded zmdi-hc-lg"></i>
</a>
</li>
<li class="nav-item list-inline-item add-user-btn">
<a href="#" class="nav-link text-muted px-3" data-toggle="tooltip" title="Add new user">
<i class="zmdi zmdi-account-add zmdi-hc-lg"></i>
</a>
</li>

<li class="nav-item list-inline-item d-block d-sm-none px-3">
<div class="dropdown">
<a class="nav-link text-muted px-0" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert zmdi-hc-lg"></i>
</a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Search chat</a>
<a class="dropdown-item" href="#">Attache Image</a>
<a class="dropdown-item" href="#">Video call</a>
<a class="dropdown-item" href="#">Call</a>
<a class="dropdown-item" href="#">Add New</a>
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
<button type="button" class="btn btn-secondary">Search</button>
<button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<span class="sr-only">Toggle Dropdown</span>
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

<div class="chat-content">
<div class="container-xxl">
<ul class="list-unstyled py-4">

<li class="d-flex message">

<div class="mr-lg-3 me-2">
<img class="avatar sm rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg" alt="avatar">
</div>

<div class="message-body">
<span class="date-time text-muted">Jason, 7:19 PM</span>
<div class="message-row d-flex align-items-center">

<div class="message-content p-3">
Hello @all, <br> How are you?
</div>

<div class="dropdown">
<a class="text-muted ms-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>

</div>
</div>
</li>

<li class="d-flex message right">
<div class="message-body">
<span class="date-time text-muted">7:19 PM <i class="zmdi zmdi-check-all text-primary"></i></span>
<div class="message-row d-flex align-items-center justify-content-end">

<div class="dropdown">
<a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>


<div class="message-content border p-3">
Start new project
</div>
</div>
<div class="message-row d-flex align-items-center justify-content-end">
<div class="message-content border p-3">
It is a long established fact that a reader will be distracted.
<div class="card mt-2">
<div class="card-body">
<span class="mb-2 badge badge-success rounded-0 label-absolute">Active</span>
<h6 class="mt-2"><a href="app-project-detail.html">Polarised stable frame</a></h6>
<span class="text-muted">Last Edited by: Caden Brakus <br>Saturday, 12 September, 2020</span>
<div class="mt-3 mb-3">
<div class="mb-1 progress" style="height: 3px;">
<div class="progress-bar" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width: 5%;"></div>
</div>
<small>Tasks Completed: <span class="text-inverse">1/23</span></small>
</div>
<div class="d-flex">
<a href="#" class="align-self-center me-2"><i class="zmdi zmdi-star-outline"></i></a>
<span class="align-self-center">20 Dec, Fri, 2020</span>
<div class="align-self-center ms-auto">
<div class="dropdown">
<a class="btn btn-sm btn-link py-0 text-muted dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false"><i class="zmdi zmdi-settings"></i></a>
<div class="dropdown-menu dropdown-menu-right" style="">
<a class="dropdown-item" href="#">Action</a>
<a class="dropdown-item" href="#">Another action</a>
<a class="dropdown-item" href="#">Something else here</a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</li>

<li class="d-flex message">

<div class="mr-lg-3 me-2">
<img class="avatar sm rounded-circle b-orange" src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg" alt="avatar">
</div>

<div class="message-body">
<span class="date-time text-muted">Martin, 7:19 PM</span>
<div class="message-row d-flex align-items-center">

<div class="message-content p-3">
Hello, Jason
</div>

<div class="dropdown">
<a class="text-muted ms-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>

</div>
</div>
</li>

<li class="d-flex message">

<div class="mr-lg-3 me-2">
<img class="avatar sm rounded-circle b-purple" src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg" alt="avatar">
</div>

<div class="message-body">
<span class="date-time text-muted">Terry, 7:19 PM</span>
<div class="message-row d-flex align-items-center">

<div class="message-content p-3">
Hello, Jason
</div>

<div class="dropdown">
<a class="text-muted ms-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>

</div>
</div>
</li>

<li class="d-flex message">

<div class="mr-lg-3 me-2">
<img class="avatar sm rounded-circle b-pink" src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg" alt="avatar">
</div>

<div class="message-body">
<span class="date-time text-muted">Michelle, 7:19 PM</span>
<div class="message-row d-flex align-items-center">

<div class="message-content p-3">
Hello, please find attachment, let me know if any changes.
<div class="attachment">
<div class="media mt-2">
<div class="avatar me-2">
<div class="avatar rounded no-image orange">
<i class="zmdi zmdi-collection-pdf"></i>
</div>
</div>
<div class="media-body overflow-hidden">
<h6 class="text-truncate mb-0">Design file.pdf</h6>
<span class="file-size">2.7 mb</span>
</div>
</div>
</div>
</div>

<div class="dropdown">
<a class="text-muted ms-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>

</div>
</div>
</li>

<li class="d-flex message right">
<div class="message-body">
<span class="date-time text-muted">7:19 PM <i class="zmdi zmdi-check-all text-primary"></i></span>
<div class="message-row d-flex align-items-center justify-content-end">

<div class="dropdown">
<a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>


<div class="message-content border p-3">
Hello, David
</div>
</div>
<div class="message-row d-flex align-items-center justify-content-end">

<div class="dropdown">
<a class="text-muted me-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>


<div class="message-content border p-3">
We have send some project shot, please review
<div class="attachment right-file">
<img class="rounded mt-1" src="${pageScope.path}/static/dist/assets/images/image-file/one-page-work-1.jpg" alt="" />
<img class="rounded mt-1" src="${pageScope.path}/static/dist/assets/images/image-file/one-page-work-2.jpg" alt="" />
<img class="rounded mt-1" src="${pageScope.path}/static/dist/assets/images/image-file/one-page-work-3.jpg" alt="" />
</div>
</div>
</div>
</div>
</li>

<li class="d-flex message divider mt-xl-5 mt-md-3 mb-xl-5 mb-md-3">
<small class="text-muted">Today</small>
</li>


<li class="d-flex message">

<div class="mr-lg-3 me-2">
<img class="avatar sm rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg" alt="avatar">
</div>

<div class="message-body">
<span class="date-time text-muted">Jason, 7:19 PM</span>
<div class="message-row d-flex align-items-center">

<div class="message-content p-3">
Thank you for the update!
</div>

<div class="dropdown">
<a class="text-muted ms-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>

</div>
<div class="message-row d-flex align-items-center">

<div class="message-content p-3">
<div class="mb-1 progress" style="height: 3px;">
<div class="progress-bar" role="progressbar" aria-valuenow="5" aria-valuemin="0" aria-valuemax="100" style="width: 5%;"></div>
</div>
<small>Tasks Completed: <span class="text-inverse">1/23</span></small>
</div>

<div class="dropdown">
<a class="text-muted ms-1 p-2 text-muted" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<i class="zmdi zmdi-more-vert"></i>
</a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Edit</a>
<a class="dropdown-item" href="#">Share</a>
<a class="dropdown-item" href="#">Delete</a>
</div>
</div>

</div>
</div>
</li>
</ul>
</div>
</div>

<div class="chat-footer border-top py-xl-4 py-lg-2 py-2">
<div class="container-xxl">
<div class="row">
<div class="col-12">
<div class="input-group align-items-center">

<input type="text" class="form-control border-0 pl-0" placeholder="Type your message...">

<div class="input-group-append d-none d-sm-block">
<span class="input-group-text border-0">
<button class="btn btn-sm btn-link text-muted" data-toggle="tooltip" title="Refresh" type="button"><i class="zmdi zmdi-refresh font-22"></i></button>
</span>
</div>
<div class="input-group-append">
<span class="input-group-text border-0">
<button class="btn btn-sm btn-link text-muted" data-toggle="tooltip" title="Smaily" type="button"><i class="zmdi zmdi-mood font-22"></i></button>
</span>
</div>
<div class="input-group-append">
<span class="input-group-text border-0">
<button class="btn btn-sm btn-link text-muted" data-toggle="tooltip" title="Attachment" type="button"><i class="zmdi zmdi-attachment font-22"></i></button>
</span>
</div>

<div class="input-group-append">
<span class="input-group-text border-0 pr-0">
<button type="submit" class="btn btn-primary">
<span class="d-none d-md-inline-block me-2">Send</span>
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
<h6 class="mb-0 font-weight-bold">Group Activity</h6>
<span class="text-muted">4 Participants</span>
</div>
<div>
<button class="btn btn-link text-muted close-chat-sidebar" type="button"><i class="zmdi zmdi-close"></i></button>
</div>
</div>
<div class="body">
<ul class="nav nav-tabs nav-overflow page-header-tabs">
<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#GroupChat-Project">Project</a></li>
<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#GroupChat-file">File Manager</a></li>
<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#GroupChat-Details">Group Details</a></li>
</ul>
<div class="tab-content py-3" id="myTabContent">
<div class="tab-pane fade show active" id="GroupChat-Project" role="tabpanel">
<div class="card mb-3">
<div class="card-body">
<span class="mb-2 badge badge-success rounded-0 label-absolute">Active</span>
<h6 class="mt-2"><a href="#">Polarised stable frame</a></h6>
<span class="text-muted">Last Edited by: Caden Brakus <br>Saturday, 12 September, 2020</span>
<div class="mt-3 mb-3">
<div class="mb-1 progress" style="height: 3px;">
<div class="progress-bar" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%;"></div>
</div>
<small>Tasks Completed: <span class="text-inverse">36/94</span></small>
</div>
<div class="d-flex">
<a href="#" class="align-self-center me-2"><i class="zmdi zmdi-star-outline"></i></a>
<span class="align-self-center">20 Sep, Fri, 2020</span>
<div class="align-self-center ms-auto">
<div class="dropdown">
<a class="btn btn-sm btn-link py-0 text-muted dropdown-toggle" href="#" role="button" data-toggle="dropdown"><i class="zmdi zmdi-settings"></i></a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Action</a>
<a class="dropdown-item" href="#">Another action</a>
<a class="dropdown-item" href="#">Something else here</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="card mb-3">
<div class="card-body">
<span class="mb-2 badge badge-secondary rounded-0 label-absolute">Paused</span>
<h6 class="mt-2"><a href="#">Synergized upward-trending info-mediaries</a></h6>
<span class="text-muted">Last Edited by: Keely West <br>Saturday, 12 September, 2020</span>
<div class="mt-3 mb-3">
<div class="mb-1 progress" style="height: 3px;">
<div class="progress-bar" role="progressbar" aria-valuenow="23" aria-valuemin="0" aria-valuemax="100" style="width: 23%;"></div>
</div>
<small>Tasks Completed: <span class="text-inverse">36/94</span></small>
</div>
<div class="d-flex">
<a href="#" class="align-self-center me-2"><i class="zmdi zmdi-star-outline"></i></a>
<span class="align-self-center">13 Sep, Fri, 2020</span>
<div class="align-self-center ms-auto">
<div class="dropdown">
 <a class="btn btn-sm py-0 btn-link text-muted dropdown-toggle" href="#" role="button" data-toggle="dropdown"><i class="zmdi zmdi-settings"></i></a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Action</a>
<a class="dropdown-item" href="#">Another action</a>
<a class="dropdown-item" href="#">Something else here</a>
</div>
</div>
</div>
</div>
</div>
</div>
<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#CreateNewProject">Create New Project</button>
</div>
<div class="tab-pane fade" id="GroupChat-file" role="tabpanel">
<ul class="list-unstyled list-group list-group-flush">
<li class="list-group-item attachment mb-1">
<div class="media mr-0">
<div class="avatar me-3">
<div class="avatar rounded no-image orange">
<i class="zmdi zmdi-collection-pdf"></i>
</div>
</div>
<div class="media-body overflow-hidden">
<h6 class="text-truncate mb-0">Design file.pdf</h6>
<div class="d-flex justify-content-between">
<span class="file-size">2.7 mb</span>
<span class="small">Martin, 7:19 PM</span>
</div>
</div>
</div>
</li>
<li class="list-group-item attachment mb-1">
<div class="media mr-0">
<div class="avatar me-3">
<div class="avatar rounded no-image cyan">
<i class="zmdi zmdi-file"></i>
</div>
</div>
<div class="media-body overflow-hidden">
<h6 class="text-truncate mb-0">Design file.psd</h6>
<div class="d-flex justify-content-between">
<span class="file-size">25.7 mb</span>
<span class="small">Terry, 12:19 PM</span>
</div>
</div>
</div>
</li>
<li class="list-group-item attachment mb-1">
<div class="media mr-0">
<div class="avatar me-3">
<div class="avatar rounded no-image green">
<i class="zmdi zmdi-file-text"></i>
</div>
</div>
<div class="media-body overflow-hidden">
<h6 class="text-truncate mb-0">Project detail.doc</h6>
<div class="d-flex justify-content-between">
<span class="file-size">3.7 mb</span>
<span class="small">Michelle, 11:05 AM</span>
</div>
</div>
</div>
</li>
</ul>
</div>
<div class="tab-pane fade" id="GroupChat-Details" role="tabpanel">
<div class="d-flex justify-content-center mt-3">
<div class="avatar xxl">
<div class="avatar xxl rounded-circle no-image timber">
<span>UD</span>
</div>
</div>
</div>
<div class="text-center mt-3 mb-5">
<h4>UI-Design Group</h4>
<span class="text-muted">the leap into electronic typesetting, remaining essentially unchanged.</span>
</div>

<ul class="chat-list">
<li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
<span>Members</span>
<div class="dropdown">
<a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="zmdi zmdi-filter-list"></i></a>
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
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Jason Porter</h6>
</div>
<div class="text-truncate">last seen 2 hours ago</div>
</div>
</div>
</div>
 </a>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Martin Green</h6>
</div>
<div class="text-truncate">last seen 7 hours ago</div>
</div>
</div>
</div>
</a>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Terry Carter</h6>
</div>
<div class="text-truncate">last seen 3 hours ago</div>
</div>
</div>
</div>
</a>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-eye"></i></button>
<button type="button" class="btn btn-link text-warning"><i class="zmdi zmdi-star"></i></button>
<button type="button" class="btn btn-link text-danger"><i class="zmdi zmdi-delete"></i></button>
</div>
 <a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg" alt="avatar">
</div>
<div class="media-body overflow-hidden">
<div class="d-flex align-items-center mb-1">
<h6 class="text-truncate mb-0 me-auto">Michelle Martin</h6>
</div>
<div class="text-truncate">last seen 5 hours ago</div>
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
</div>

<div class="addnew-user-sidebar py-xl-4 py-3 px-xl-4 px-3">
<div class="d-flex flex-column">
<div class="header border-bottom pb-4 d-flex justify-content-between">
<div>
<h6 class="mb-0 font-weight-bold">Add new member</h6>
<span class="text-muted">Update your profile details</span>
</div>
<div>
<button class="btn btn-link text-muted close-chat-sidebar" type="button"><i class="zmdi zmdi-close"></i></button>
</div>
</div>
<div class="body mt-4">

<div class="form-group input-group-lg search mb-3">
<i class="zmdi zmdi-search"></i>
<input type="text" class="form-control" placeholder="Search...">
</div>

<ul class="chat-list">
<li class="header d-flex justify-content-between ps-3 pe-3 mb-1">
<span>A</span>
<div class="dropdown">
<a class="btn btn-link px-1 py-0 border-0 text-muted dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
<div class="dropdown-menu dropdown-menu-right">
<a class="dropdown-item" href="#">Action</a>
<a class="dropdown-item" href="#">Another action</a>
<a class="dropdown-item" href="#">Something else here</a>
</div>
</div>
</li>
<li>
<div class="hover_action">
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar1.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar3.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar5.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar4.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar8.jpg" alt="avatar">
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
<button type="button" class="btn btn-link text-info"><i class="zmdi zmdi-plus-circle"></i></button>
</div>
<a href="#" class="card">
<div class="card-body">
<div class="media">
<div class="avatar me-3">
<img class="avatar rounded-circle" src="${pageScope.path}/static/dist/assets/images/xs/avatar9.jpg" alt="avatar">
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
<h5 class="modal-title">Invite New Friends</h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form>
<div class="form-group">
<label>Email address</label>
<input type="email" class="form-control">
<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
</div>
</form>
<div class="mt-5">
<button type="button" class="btn btn-primary">Send Invite</button>
<button type="button" class="btn btn-link" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>
</div>


<div class="modal fade" id="CreateNewProject" tabindex="-1" aria-hidden="true">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<h5 class="modal-title" id="exampleModalLabel">Create new Project</h5>
</div>
<div class="modal-body">
<form>
<div class="form-group row">
<label class="col-sm-3 col-form-label">Project code</label>
<div class="col-sm-9">
<div class="input-group input-group-lg">
<input type="text" class="form-control" placeholder="Enter text here">
</div>
</div>
</div>
<div class="form-group row">
<label class="col-sm-3 col-form-label">Project name</label>
<div class="col-sm-9">
<div class="input-group input-group-lg">
<input type="text" class="form-control" placeholder="Enter text here">
</div>
</div>
</div>
<div class="form-group row">
<label class="col-sm-3 col-form-label">Start date</label>
<div class="col-sm-9">
<div class="input-group input-group-lg">
<input type="text" class="form-control project-date" placeholder="Start date">
</div>
</div>
</div>
<div class="form-group row">
<label class="col-sm-3 col-form-label">Due date</label>
<div class="col-sm-9">
<div class="input-group input-group-lg">
<input type="text" class="form-control project-date" placeholder="Due date">
</div>
</div>
</div>
<div class="form-group row">
<label class="col-sm-3 col-form-label">Select Team</label> 
<div class="col-sm-9">
<div class="input-group input-group-lg">
<select class="custom-select form-control">
<option selected="">Select Team</option>
<option value="1">One</option>
<option value="2">Two</option>
<option value="3">Three</option>
</select>
</div>
</div>
</div>
<div class="form-group row">
<label class="col-sm-3 col-form-label">Enter Project Bio</label>
<div class="col-sm-9">
<textarea rows="4" class="form-control mb-3" placeholder="Enter Project Bio"></textarea>
</div>
</div>
</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
<button type="button" class="btn btn-primary">Create</button>
</div>
</div>
</div>
</div>

</div>


<script type="text/javascript" src="${pageScope.path}/static/dist/assets/vendor/jquery/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${pageScope.path}/static/dist/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<script type="text/javascript" src="${pageScope.path}/static/dist/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

<script type="text/javascript" src="${pageScope.path}/static/js/template.js"></script>
<script type="text/javascript">
    $('.project-date').datepicker({ });
</script>

</body>
</html>
