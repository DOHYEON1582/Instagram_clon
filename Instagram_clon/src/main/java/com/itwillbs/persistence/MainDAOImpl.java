package com.itwillbs.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PostVO;

@Repository
public class MainDAOImpl implements MainDAO {
	
	
	private static final Logger logger = LoggerFactory.getLogger(MainDAOImpl.class);
	
	@Inject
	private SqlSession sql;
	
	private static final String NAMESPACE = "com.itwillbs.mapper.UserMapper";
	

	@Override
	public List<PostVO> getLocation(String location) throws Exception {
		logger.info(" getLocation(String location) 실행 ");
		
		return sql.selectList(NAMESPACE+".getLocation", location);
	}

	
	
}// endImpl
