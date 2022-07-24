package com.zq.bean;

import org.omg.CORBA.OBJ_ADAPTER;

import java.util.HashMap;
import java.util.Map;

public class Msg {
    /**
     * 返回状态信息：
     * 成功：100
     * 错误：200
     */
    private int code;
    /**
     * 错误信息
     */
    private String msg;
    private Map<String, Object> extend = new HashMap<>();

    public static Msg success() {
        Msg msg = new Msg();
        msg.setCode(100);
        msg.setMsg("处理成功");
        return msg;
    }

    public static Msg fail() {
        Msg msg = new Msg();
        msg.setCode(200);
        msg.setMsg("处理失败");
        return msg;
    }

    public Msg add(String string, Object object) {
        this.getExtend().put(string, object);
        return this;
    }


    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getExtend() {
        return extend;
    }

    public void setExtend(Map<String, Object> extend) {
        this.extend = extend;
    }
}
