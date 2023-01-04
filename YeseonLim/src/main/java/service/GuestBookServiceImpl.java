package service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.GuestBookVO;
import repository.GuestBookDAO;
import repository.GuestBookDAOImpl;

public class GuestBookServiceImpl implements GuestBookService {
	private static final Logger log = LoggerFactory.getLogger(GuestBookServiceImpl.class);
	private GuestBookDAO gdao;
	
	public GuestBookServiceImpl() {
		gdao = new GuestBookDAOImpl();
	}

	@Override
	public int insert(GuestBookVO gvo) {
		log.info("insert svc chk");
		return gdao.insert(gvo);
	}

	@Override
	public List<GuestBookVO> getList() {
		log.info("list svc chk");
		return gdao.selectList();
	}

	
}
