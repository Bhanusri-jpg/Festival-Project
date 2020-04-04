package com.cts.training.Service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.training.Entity.VisitorEntity;
import com.cts.training.bean.VisitorRegBean;
import com.cts.training.dao.VisitorDao;
@Service
public class VisitorService implements VisitorServiceInterface{
	@Autowired
	private VisitorDao dao;
	
	@Transactional
	public void saveVisitor(VisitorRegBean visitorBean) {
		
		dao.saveVisitor(visitorBean);
	
	}

	@Override
	public String validateLogin(String userName, String passWord) {
		String passwd = dao.getPassword(userName);
		System.out.println(passwd);
		if(passwd.equals("mismatch"))
		{
			return "notFound";
		}
		else
		{
			if(passwd.equals(passWord))
			{
				return "found";
			}
			else
			{
				return "incorrect";
			}
		}
		
	}

	@Override
	@Transactional
	public List<VisitorEntity> getVisitor(String userName) {
		return dao.getVisitor(userName);
	}

	@Override
	public VisitorEntity getVisitorObject(String userName) {
		List<VisitorEntity> list = dao.getVisitor(userName);
		if(list.isEmpty())
		{
			return null;
		}
		else
			return list.get(0);
	}

	@Override
	@Transactional
	public VisitorEntity updateVisitor(VisitorRegBean visitorBean) {
		
		return dao.updateVisitor(visitorBean);
	}

	@Override
	@Transactional
	public boolean changePassword(String userName, String passWord) {
		
		return dao.changePassword(userName, passWord);
	}

	@Override
	public VisitorEntity getVisitor(int visitorId) {
		// TODO Auto-generated method stub
		return dao.getVisitor(visitorId);
	}

	@Override
	public int getId(String userName) {
		// TODO Auto-generated method stub
		return dao.getId(userName);
	}

}
