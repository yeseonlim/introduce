package repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.GuestBookVO;
import orm.DatabaseBuilder;

public class GuestBookDAOImpl implements GuestBookDAO {
	private static final Logger log = LoggerFactory.getLogger(GuestBookDAOImpl.class);
	private SqlSession sql;
	private final String NS = "GuestBookMapper.";
	private int isOk;
	
	public GuestBookDAOImpl() {
		new DatabaseBuilder();
		sql = DatabaseBuilder.getFactory().openSession();
	}

	@Override
	public int insert(GuestBookVO gvo) {
		log.info("insert dao chk");
		isOk = sql.insert(NS+"into", gvo);
		if(isOk>0) sql.commit();
		return isOk;
	}

	@Override
	public List<GuestBookVO> selectList() {
		log.info("list dao chk");
		return sql.selectList(NS+"list");
	}
	

	
	
}
