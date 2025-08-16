package com.example.Demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.Demo.Entity.Manager;

@Repository
public interface mrepo extends JpaRepository<Manager,Integer>
{

}
