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
	// 내정보 보기
	public Member getOneMember(String id) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   Member member = session.selectOne("mapper.member.getOneMember",id);
		   session.close();
		    
		   return member;
	}
	
	
	public int ValidId(String Id) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   int cnt=session.selectOne("mapper.member.validdateId", Id);
		   session.close();
		   return cnt;
	   }
	 public int memberUpdate(Member user) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   int cnt= session.update("mapper.member.updateMember",user);
		   session.close();
		   return cnt;
	   }
	 //회원추가(회원가입)
	public int addMember(Member member) {
		SqlSession session= MybatisConfig.getInstance().openSession(true);
		int cnt = session.insert("mapper.member.memberInsert",member);
		session.close();
		return cnt;
	}
	
	 public int deleteMember(Member member) {
		   SqlSession session= MybatisConfig.getInstance().openSession(true);
		   int cnt=session.delete("mapper.member.deleteMember", member);
		   session.close();
		   return cnt;
	   }
	   
}
