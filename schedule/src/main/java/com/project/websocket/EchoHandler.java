package com.project.websocket;

import org.springframework.stereotype.Repository;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Repository
public class EchoHandler extends TextWebSocketHandler {

	/**
	 * 웹 소켓 연결이 종료되고 나서 서버단에서 실행해야할 일들을 정의해주는 메소드
	 **/
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

			System.out.println(" 웹 소켓 연결이 종료되고 나서 서버단에서 실행해야할 일들을 정의해주는 메소드");

	}

	/**
	 *  연결이 성사 되고 나서 해야할 일들.
	 **/
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {

		System.out.println(" 연결이 성사 되고 나서 해야할 일들.");

	}

	/**
	 * 웹소켓 서버단으로 메세지가 도착했을때 해주어야할 일들을 정의하는 메소드 입니다.
	 **/
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {

		System.out.println("웹소켓 서버단으로 메세지가 도착했을때 해주어야할 일들을 정의하는 메소드 입니다.");
	//현재 수신자에게 몇개의 메세지가 와있는지 디비에서 검색함.

			

	}
	
}
