package repository;

import java.util.List;

import domain.GuestBookVO;

public interface GuestBookDAO {

	int insert(GuestBookVO gvo);

	List<GuestBookVO> selectList();

	

}