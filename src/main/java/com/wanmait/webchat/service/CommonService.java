package com.wanmait.webchat.service;

public interface CommonService<T> {
    public void insert(T t);
    public void update(T t);
    public void delete(T t);
    public void select(T t);

}
