package com.wanmait.webchat.websocket;


import com.wanmait.webchat.util.StringUtil;
import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.util.ArrayList;

/**
 * @author drago
 */
@ServerEndpoint("/webSocket/{userId}")
public class WebSocket {
    /**该Session不等同于HttpSession 是WebSocket的一次会话
     *
     */
    private Session session;

    /**存放客户端浏览器连接时发送的userId 是浏览器客户端的唯一标识
     * 
     */
    private int userId;


    /**每个浏览器客户端来连接 自动调用该方法
     * 
     * @param userId 新连接的客户端的用户ID
     * @param session   理论上的webSocket会话
     */
    @OnOpen()
    public void onOpen(@PathParam("userId") int userId, Session session) {
        this.userId = userId;
        //浏览器客户端发送的userId 客户端的唯一标识
        this.session = session;
        /* 将客户端连接创建的新WebSocket对象保存到Map 中间 客户端发送的userId是唯一标识 */
        WebSocketUtils.getWebSocketUtils().addClient(userId, this);

    }


    /**浏览器客户端webSocket关闭 即客户端执行websocket.
     * close()方法 该onClose方法 自动执行
     */
    @OnClose()
    public void onClose() {
        //从map中间 移除该浏览器客户端生成的WebSocket对象
        WebSocketUtils.getWebSocketUtils().remove(userId);
    }

    /**浏览器客户端发送消息 服务器接收
     * 即浏览器执行websocket.send()方法
     * 服务器该方法自动执行 参数message
     * 是浏览器客户端发送的数据
     */
    @OnMessage()
    public synchronized void onMessage(String message)  {
        //对发送来的消息进行处理，获得List:hostID,friendID,message(string)
        ArrayList<String> messageList = StringUtil.cutMessage(message);

        //将信息发送给自己和好友
        int j = 2;
        for (int i=0;i<j;i++){
            String idString = messageList.get(i);
            int id = Integer.parseInt(idString);
            /*发送包含自己ID和好友的ID以及聊天信息的文本，文本传递到ChatController中再进行处理
            传递对象可以使用json*/
            WebSocketUtils.getWebSocketUtils().sendMessageTo(message,id);
        }
    }


    /**客户端服务器出现异常 执行该方法
     *
     * @param error 异常
     */
    @OnError()
    public void onError(Throwable error) {
        error.printStackTrace();
    }

    /**向该WebSocket对应的浏览器客户端发送数据
     *
     * @param message 带有用户ID和好友ID以及信息文本的字符串
     */
    public void sendMessageToClient(String message) {
        this.session.getAsyncRemote().sendText(message);
    }




}
