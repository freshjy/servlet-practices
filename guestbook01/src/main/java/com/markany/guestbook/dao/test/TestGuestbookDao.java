package com.markany.guestbook.dao.test;

import java.util.List;

import com.markany.guestbook.dao.GuestbookDao;
import com.markany.guestbook.vo.GuestbookVo;

public class TestGuestbookDao {
	public static void main(String[] args) {
//		GuestbookVo vo = new GuestbookVo();
//		vo.setName("백정엽");
//		vo.setPassword("1234");
//		vo.setMessage("dkssud");
//		vo.setReg_date("now()");
//		System.out.println(vo.getName());
//		System.out.println(vo.getPassword());
//		System.out.println(vo.getMessage());
//		System.out.println(vo.getReg_date());
		testFindAll();
	}
	
	
	public static boolean testInert(GuestbookVo vo) {
		return new GuestbookDao().insert(vo);
	}
	
	public static void testFindAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
	}
	
}
