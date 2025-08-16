package com.example.Demo.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Demo.Entity.Manager;
import com.example.Demo.Repo.mrepo;
import com.example.Demo.Services.mservice;

@Service
public class mdao implements mservice
{
	@Autowired
	mrepo mr;

	@Override
	public void register(Manager mm) {
		mr.save(mm);
	}
	
	
}
