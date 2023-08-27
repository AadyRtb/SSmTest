package com.example.util;

/**
 * 服务器向客户端传输数据的模型
 */
public class Result {

    /**
     * 推荐值
     */
    public final static Integer CODE_SUCCESS = 1;
    public final static Integer CODE_ERROR=0;
    public final static String MSG_SUCCESS="success";
    public final static String MSG_ERROR="error";
    /**
     * 标识操作是否成功
     * 1表示成功，0表示失败
     */
    private Integer code;

    /**
     * 操作成功与否的描述性
     */
    private String msg;

    /**
     * 响应给客户端的具体数据
     */
    private Object data;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public static Result success(){
        Result result = new Result();
        result.setCode(CODE_SUCCESS);
        result.setMsg(MSG_SUCCESS);
        return result;
    }

    public static Result success(String msg){
        Result result = new Result();
        result.setCode(CODE_SUCCESS);
        result.setMsg(msg);
        return result;
    }
    public static Result success(Object data){
        Result result = new Result();
        result.setCode(CODE_SUCCESS);
        result.setMsg(MSG_SUCCESS);
        result.setData(data);
        return result;
    }

    public static Result error(){
        Result result = new Result();
        result.setCode(CODE_ERROR);
        result.setMsg(MSG_ERROR);
        return result;
    }

    public static Result error(String msg){
        Result result = new Result();
        result.setCode(CODE_ERROR);
        result.setMsg(msg);
        return result;
    }

}
