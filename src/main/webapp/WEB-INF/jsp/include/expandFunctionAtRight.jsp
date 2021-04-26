<%--
  Created by IntelliJ IDEA.
  User: drago
  Date: 2021/3/7
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    pageContext.setAttribute("path", path);%>
<div class="rightbar d-none d-md-block">

    <div class="nav flex-column nav-pills border-start py-xl-4 py-3 h-100">
        <a class="nav-link mb-2 text-center rightbar-link" data-toggle="pill" href="#tab-calendar"><i
                class="zmdi zmdi-calendar"></i></a>
        <a class="nav-link mb-2 text-center rightbar-link" data-toggle="pill" href="#tab-note"><i
                class="zmdi zmdi-lamp"></i></a>
        <a class="nav-link mb-2 text-center rightbar-link" data-toggle="pill" href="#tab-task"><i
                class="zmdi zmdi-comment-edit"></i></a>
        <a class="nav-link mb-2 text-center rightbar-link" data-toggle="pill" href="#tab-github"><i
                class="zmdi zmdi-github"></i></a>
        <a class="nav-link mb-2 text-center" href="#"><i class="zmdi zmdi-plus"></i></a>
    </div>
    <div class="tab-content py-xl-4 py-3 px-xl-4 px-3">

        <div class="tab-pane fade" id="tab-calendar" role="tabpanel">
            <div class="header border-bottom pb-4 d-flex justify-content-between">
                <div>
                    <h6 class="mb-0 font-weight-bold">日历</h6>
                    <span class="text-muted">Update your profile details</span>
                </div>
                <div>
                    <button class="btn btn-link close-sidebar text-muted" type="button"><i
                            class="zmdi zmdi-close"></i></button>
                </div>
            </div>
            <div class="body mt-4">
                <div id="mini-calendar"></div>
            </div>
        </div>

        <div class="tab-pane fade" id="tab-note" role="tabpanel">
            <div class="header border-bottom pb-4 d-flex justify-content-between">
                <div>
                    <h6 class="mb-0 font-weight-bold">我的笔记</h6>
                    <span class="text-muted">Update your profile details</span>
                </div>
                <div>
                    <button class="btn btn-link close-sidebar text-muted" type="button"><i
                            class="zmdi zmdi-close"></i></button>
                </div>
            </div>
            <div class="body mt-4">
                <div class="add-note">
                    <form>
                        <div class="input-group mb-2">
                            <textarea rows="3" class="form-control" placeholder="写笔记.."></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary addnote">添加</button>
                    </form>
                    <ul class="list-unstyled mt-4">
                        <li class="card border-0 mb-2">
                            <span>读者在查看页面布局时，会被页面的可读内容分散注意力，这是一个由来已久的事实。</span>
                            <button class="btn btn-sm btn-link"><i class="zmdi zmdi-delete text-danger"></i>
                            </button>
                        </li>
                        <li class="card border-0 mb-2">
                            <span>与流行的观点相反，Lorem Ipsum并不是简单的随机文本。</span>
                            <button class="btn btn-sm btn-link"><i class="zmdi zmdi-delete text-danger"></i>
                            </button>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="tab-pane fade" id="tab-task" role="tabpanel">
            <div class="header border-bottom pb-4 d-flex justify-content-between">
                <div>
                    <h6 class="mb-0 font-weight-bold">任务列表</h6>
                    <span class="text-muted">Update your profile details</span>
                </div>
                <div>
                    <button class="btn btn-link close-sidebar text-muted" type="button"><i
                            class="zmdi zmdi-close"></i></button>
                </div>
            </div>
            <div class="body mt-4">
                <div class="todo-list">
                    <ul class="list-unstyled todo-list-items">
                        <li>
                            <label class="c_checkbox">
                                <input type="checkbox">
                                <span class="checkmark"></span>
                                <span class="ms-2">在github上更新项目</span>
                            </label>
                            <button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </li>
                        <li>
                            <label class="c_checkbox">
                                <input type="checkbox">
                                <span class="checkmark"></span>
                                <span class="ms-2">与设计团队会面并更新</span>
                            </label>
                            <button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </li>
                        <li>
                            <label class="c_checkbox">
                                <input type="checkbox">
                                <span class="checkmark"></span>
                                <span class="ms-2">将项目zip文件发送给开发人员</span>
                            </label>
                            <button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </li>
                        <li>
                            <label class="c_checkbox">
                                <input type="checkbox">
                                <span class="checkmark"></span>
                                <span class="ms-2">为一页创建新的设计psd</span>
                            </label>
                            <button class="btn btn-sm btn-link" type="submit"><i class="zmdi zmdi-delete"></i>
                            </button>
                        </li>
                    </ul>
                    <form class="add-items">
                        <div class="input-group mb-2">
                                <textarea rows="3" class="form-control"
                                          placeholder="What do you need to do today?"></textarea>
                        </div>
                        <button class="add btn btn-primary" type="submit">添加到列表</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="tab-pane fade" id="tab-github" role="tabpanel">
            <div class="header border-bottom pb-4 d-flex justify-content-between">
                <div>
                    <h6 class="mb-0 font-weight-bold">我的Github动态</h6>
                    <span class="text-muted">puffintheme</span>
                </div>
                <div>
                    <button class="btn btn-link close-sidebar text-muted" type="button"><i
                            class="zmdi zmdi-close"></i></button>
                </div>
            </div>
            <div class="body mt-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row align-items-center">
                            <div class="col">
                                <div class="d-flex align-items-center">
                                    <img src="${pageScope.path}/static/dist/assets/images/xs/avatar6.jpg"
                                         data-toggle="tooltip" title="" alt="Avatar" class="rounded-circle avatar"
                                         data-original-title="Avatar Name">
                                    <div class="ms-3">
                                        <a href="#" title="">${sessionScope.user.nickname}</a>
                                        <p class="mb-0">
                                            <a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                               data-cfemail="ec81858f8489808089c28b9e898982ac89948d819c8089c28f8381">
                                                [email&#160;protected]
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-auto">
                                <div class="dropdown">
                                    <a href="#" class="btn btn-link btn-sm dropdown-toggle" role="button"
                                       data-toggle="dropdown" aria-haspopup="true" data-expanded="false">
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
                            <textarea rows="3" class="form-control no-resize" placeholder="随便写写...."></textarea>
                        </div>
                        <div class="align-right">
                            <button class="btn btn-primary">推送</button>
                            <button class="btn btn-link"><i class="zmdi zmdi-attachment text-muted"></i></button>
                            <button class="btn btn-link"><i class="zmdi zmdi-camera text-muted"></i></button>
                            <button class="btn btn-link"><i class="zmdi zmdi-mood text-muted"></i></button>
                        </div>
                    </div>
                </div>
                <ol class="activity-feed p-0 ms-3 mb-0 pt-5">
                    <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="5 hours ago"
                        data-color="yellow">
                        <div class="card mb-3">
                            <div class="card-body">
                                <input type="checkbox" id="expand_1" name="expand_1">
                                <label for="expand_1" class="mb-0">
                                    <b>请求</b>更新Git项目
                                </label>
                                <div class="feed-content">
                                    <p><b>评论</b> Lorem Ipsum只是印刷排版行业的虚拟文本。</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="7 hours ago"
                        data-color="green">
                        <div class="card mb-3">
                            <div class="card-body">
                                <input type="checkbox" id="expand_2" name="expand_2">
                                <label for="expand_2" class="mb-0">
                                    <b>更新</b>React应用程序登录页代码
                                </label>
                                <div class="feed-content">
                                    <p><b>评论</b> Lorem Ipsum只是印刷排版行业的虚拟文本。</p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="December 2020"
                        data-color="green">
                        <div class="card mb-3">
                            <div class="card-body">
                                <input type="checkbox" id="expand_3" name="expand_3">
                                <label for="expand_3" class="mb-0">
                                    2私人存储库中的贡献
                                </label>
                                <div class="feed-content">
                                    <span><a href="#">puffintheme/Allima-v0.1</a> 12 commits</span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="feed-item d-flex mb-3 pl-lg-4 ps-3" data-content="" data-time="December 2020"
                        data-color="dark">
                        <div class="card mb-3">
                            <div class="card-body">
                                <input type="checkbox" id="expand_4" name="expand_4">
                                <label for="expand_4" class="mb-0">
                                    <b>创建者</b> 创建一个新项目
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