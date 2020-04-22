package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;

@Repository("myDao")
public class MypageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int deleteMember(Member m) {
		return sqlSession.delete("memberMapper.deleteMember",m);
	}

	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember",m);
	}
	
	public int pwdCheck(String password) {
		return sqlSession.selectOne("memberMapper.pwdCheck",password);
	}

	public int getSearchResultListCount(SearchCondition sc) {
		return sqlSession.selectOne("QnA-mapper.getSearchResultListCount", sc);
	}

	public ArrayList<QnA> selectSearchResultList(HttpSession session,SearchCondition sc, PageInfo pi) {
        ArrayList<QnA> list = null;
		
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList)sqlSession.selectList("QnA-mapper.selectSearchResultList",sc,rowBounds);
		
		return list;
	}

	public ArrayList<Orders> myorderList(Member m) {
		 return (ArrayList)sqlSession.selectList("memberMapper.myorderList",m);
		
		
	}

	public ArrayList<Orders> P_change(String or_No) {
		return (ArrayList)sqlSession.selectList("memberMapper.P_change",or_No);
	}

	public ArrayList<Orders> P_reject(String or_No) {
		return (ArrayList)sqlSession.selectList("memberMapper.P_reject",or_No);
	}

	public int C_complete(Change ch) {
		return sqlSession.insert("memberMapper.C_complete",ch);
	}

	public int R_complete(Reject re) {
		return sqlSession.insert("memberMapper.R_complete",re);
	}



	



}
