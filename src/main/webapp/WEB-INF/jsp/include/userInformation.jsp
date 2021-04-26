<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();
    pageContext.setAttribute("path", path);%>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h3 class="mb-0 text-primary">头像</h3>
    <div>
        <a href="<%=path%>/user/signOut" title="" class="btn btn-dark">注销</a>
    </div>
</div>

<div class="form-group input-group-lg search mb-3">
    <i class="zmdi zmdi-search"></i>
    <input type="text" class="form-control" placeholder="搜索...">
</div>

<div class="card border-0 text-center pt-3 mb-4">
    <div class="card-body">
        <div class="card-user-avatar" >
            <img width="168px" height="168px"  src="${pageScope.path}/static/dist/assets/images/${sessionScope.user.profile}" alt="avatar"/>
            <a href="${pageScope.path}/user/settings">
                <button type="button" class="btn btn-secondary btn-sm"><i class="zmdi zmdi-edit"></i></button>
            </a>
        </div>
        <div class="card-user-detail mt-4">
            <h4>${sessionScope.user.nickname}</h4>
            <span class="text-muted"><a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                        data-cfemail="5e33373d363b32323b70392c3b3b301e39333f3732703d3133">[email&#160;protected]</a></span>
            <!-- 手机号和所在地 -->
            <p>${sessionScope.user.phone} - ${sessionScope.user.city}</p>
            <div class="social">
                <!-- 拓展社交链接 -->
                <a class="icon p-2" href="#" data-toggle="tooltip" title="Facebook"><i
                        class="zmdi zmdi-facebook-box"></i></a>
                <a class="icon p-2" href="#" data-toggle="tooltip" title="Github"><i
                        class="zmdi zmdi-github-box"></i></a>
                <a class="icon p-2" href="#" data-toggle="tooltip" title="Linkedin"><i
                        class="zmdi zmdi-linkedin-box"></i></a>
                <a class="icon p-2" href="#" data-toggle="tooltip" title="Instagram"><i class="zmdi zmdi-instagram"></i></a>
            </div>
        </div>
    </div>
</div>

<div class="card border-0">
    <ul class="list-group custom list-group-flush">

        <li class="list-group-item d-flex justify-content-between align-items-center">
            <span>主题颜色</span>
            <ul class="choose-skin list-unstyled mb-0">
                <li data-theme="indigo" data-toggle="tooltip" title="Theme-Indigo">
                    <div class="indigo"></div>
                </li>
                <li class="active" data-theme="cyan" data-toggle="tooltip" title="Theme-Cyan">
                    <div class="cyan"></div>
                </li>
                <li data-theme="green" data-toggle="tooltip" title="Theme-Green">
                    <div class="green"></div>
                </li>
                <li data-theme="blush" data-toggle="tooltip" title="Theme-Blush">
                    <div class="blush"></div>
                </li>
                <li data-theme="dark" data-toggle="tooltip" title="Theme-Dark">
                    <div class="dark"></div>
                </li>
            </ul>
        </li>
        <li class="list-group-item d-flex justify-content-between align-items-center">
            <span>桌面通知</span>
            <label class="c_checkbox">
                <input type="checkbox" checked="">
                <span class="checkmark"></span>
            </label>
        </li>
        <li class="list-group-item d-flex justify-content-between align-items-center">
            <span>声音设置</span>
            <label class="c_checkbox">
                <input type="checkbox">
                <span class="checkmark"></span>
            </label>
        </li>
        <li class="list-group-item border-0 mt-3">
            <a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> 需要帮助？点这里~</a>
        </li>
        <li class="list-group-item border-0">
            <a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> 知识库</a>
        </li>
        <li class="list-group-item border-0">
            <a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> 语言切换</a>
        </li>
        <li class="list-group-item mb-3">
            <a class="link" href="#"><i class="zmdi zmdi-chevron-right me-2"></i> 浏览器 & 应用程序</a>
        </li>
    </ul>

    <div class="card-body text-center border-top">
        <a href="${pageScope.path}/user/settings">
            <button type="button" class="btn btn-secondary">更换头像</button>
        </a>
    </div>
</div>