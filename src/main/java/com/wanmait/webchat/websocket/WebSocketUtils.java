package com.wanmait.webchat.websocket;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author drago
 */
public class WebSocketUtils {
    /**单一实例
     *
     */
    public WebSocketUtils() {}
    private static final WebSocketUtils WEB_SOCKET_UTILS = new WebSocketUtils();
    public static WebSocketUtils getWebSocketUtils() {
        return WEB_SOCKET_UTILS;
    }

    /**每连接一个客户端 会自动创建一个新的WebSocket对象
     * clients用来存放所有的WebSocket对象 浏览器客户端发送的userId为clients的key关键字
     * 创建的WebSocket对象为clients的value值 往clients集合中间
     */
    private final Map<Integer, WebSocket> clients = new ConcurrentHashMap<>();

    /**
     * 增加新的WebSocket对象 新的浏览器客户端
     */
    public void addClient(int userId,  WebSocket webSocket) {
        clients.put(userId, webSocket);
    }

    /**将关闭的客户端创建的WebSocket对象 从clients中间移除
     *
     * @param userId 用户的ID
     */
    public void remove(int userId) {
        clients.remove(userId);
        //根据key从map中间移除
    }


    /**
     * 向其中的某个客户端发送数据
     * 发送包含自己ID和好友的ID以及聊天信息的文本，文本传递到ChatController中再进行处理
     * @param message:hostID,friendId,message(string)
     * @param friendId：好友的ID
     */
    public void sendMessageTo(String message, int friendId) {
        //从map中间获得userId对应的客户端
        WebSocket webSocket = clients.get(friendId);
        //发送离线消息
        if (webSocket != null) {
            //向客户端发送聊天对象
            webSocket.sendMessageToClient(message);
        }

    }

    /**向所有客户端发送数据
     *
     * @param message 消息的文本
     */
    public void sendMessageToAll(String message) {
        /*获得map中间所有的value值 即所有的客户端WebSocket对象
         clients.values();*/
        //向客户端发送数据
        for ( WebSocket webSocket : clients.values()) {
             webSocket.sendMessageToClient(message);
        }
    }


}
