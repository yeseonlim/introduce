package service;

import java.util.List;

import domain.GuestBookVO;

public interface GuestBookService {

	int insert(GuestBookVO gvo);

	List<GuestBookVO> getList();

	


}