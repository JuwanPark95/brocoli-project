package com.kh.brocoli.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.board.model.vo.Notice;
import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;

@Repository("qDao")
public class QnADao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getListCount() {
		return sqlSession.selectOne("QnA-mapper.getListCount");
	}

	public ArrayList<QnA> selectList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		return (ArrayList)sqlSession.selectList("QnA-mapper.selectList",null, rowBounds);
	}

}
