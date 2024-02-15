package kr.co.domain;

import lombok.Data;

@Data
public class MemberDTO {
	private Long m_no;//회원번호
	private String m_id;//회원아이디
	private String m_pw;//비번
	private String m_pw2; //비번확인
	private String m_name;//이름
	private String m_email;//이메일
	private String m_point;//보유포인트
	private int m_access;//관리자 1, 회원 2

}
