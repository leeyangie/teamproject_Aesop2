package com.aesop.per;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.aesop.domain.Review;

@Repository
public class ReviewDAO implements ReviewMapper {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Review> getReviewList() {
		return sqlSession.selectList("review.getReviewList");
	}

	@Override
	public Review getReview(int no) {
		return sqlSession.selectOne("review.getReivew", no);
	}

	@Override
	public int getTotalCount() {
		return sqlSession.selectOne("review.getTotalCount");
	}

	@Override
	public void insReview(Review review) {
		sqlSession.insert("review.insReview", review);
	}

	@Override
	public void upReview(Review review) {
		sqlSession.update("review.upReview", review);
	}

	@Override
	public void delReview(int no) {
		sqlSession.delete("review.delReview", no);
	}
}
