<!-- WebSocket 相关函数 -->

    // 用来存放该客户端和服务器之间的连接对象
    var websocket;

    // @ServerEndpoint注解
    function connectWebSocket() {
    //获得当前会话的userId
    //作为该客户端的唯一标识
    //连接时发送给服务器WebSocket
    var userId = "${sessionScope.user.id}";

    //不同浏览器的连接语句
    if ('WebSocket' in window) {
    websocket = new WebSocket("ws://localhost:8080/WebChat/webSocket/" + userId);
} else if ('MozWebSocket' in window) {
    websocket = new MozWebSocket("ws://localhost:8080/WebChat/webSocket/" + userId);
} else {
    websocket = new SockJS("localhost:8080/WebChat/webSocket/" + userId);
}

    //连接成功建立的回调方法
    //连接成功
    //自动执行该方法
    websocket.onopen = function () {
    alert("连接成功");
};//回调方法
    websocket.onerror = function () {
    alert("连接错误");
};

    //连关闭的回调方法
    websocket.onclose = function () {
    alert("连接关闭");
};

    //设置接收到服务器发送消息的回调方法
    //接收到服务器发送的消息
    //调用acceptMessage
    //设置该回调方法
    //表示当服务器发送消息
    //该acceptMessage方法立即执行
    websocket.onmessage = acceptMessage;

}
    //connectWebSocket方法的结束


    //接收消息的方法
    function acceptMessage(event) {
    //event.dataWebSocket服务器发送的内容
    addMessageToUl(event.data);
}

    //关闭WebSocket连接
    function closeWebSocket() {
    //断开和服务器的WebSocket连接
        websocket.close();
}



    //关闭浏览器断开连接
    window.onbeforeunload = function () {
    websocket.close();

}
