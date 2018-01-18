package com.commom.web;

public class JsonResult {
	private static final int SUCCESS = 1;
	private static final int ERROR = 0;
	private int state;
	private String message;
	private Object data;

	public JsonResult() {
		this.state = SUCCESS;// 1
		this.message = "OK";
	}

	public JsonResult(String message) {
		this.state = SUCCESS;// 1
		this.message = message;
	}
	public JsonResult(String message,Object data){
		this.state = SUCCESS;
		this.message = message;
		this.data = data;
	}

	public JsonResult(Object data) {
		this();
		this.data = data;
	}

	public JsonResult(Throwable t) {
		this.state = ERROR;
		this.message = t.getMessage();
	}

	public Object getData() {
		return data;
	}

	public int getState() {
		return state;
	}

	public String getMessage() {
		return message;
	}

	public void setState(int state) {
		this.state = state;
	}

}
