package com.basic.storeG.dao;

import org.apache.ibatis.session.SqlSession;


import com.basic.storeG.util.MybatisConfig;
import com.basic.storeG.vo.Member;

public class MemberDAO {
	private MemberDAO() {
	}
	
	private static MemberDAO dao = new MemberDAO();
	public static MemberDAO getInstance() {
		return dao;
	}
	
	//회원로그인
	public String memberLogin(Member member) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		String memberId = session.selectOne("mapper.member.memberLogin", member);
		session.close();
		return memberId;
	}
	
	public Member getOneMember(String id) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   Member member = session.selectOne("mapper.member.getOneMember",id);
		   session.close();
		    
		   return member;
	   }
	
	
}
