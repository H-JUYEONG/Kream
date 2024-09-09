package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {
	
	//필드
	@Autowired
	private UserDao userDao;
	
	
	/* 회원가입 */
	public int exeRegister(UserVo userVo) {	 
		System.out.println("UserService.exeRegister()");
		
		int count = userDao.insertUser(userVo);
		
		return count;
		
	}
	

}
