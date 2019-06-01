package com.coffee.shop.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.coffee.shop.member.Member;

@Repository
public class MemberDao {
	@Autowired
	JdbcTemplate jdbcTemplate;;
	
	public List<Member> displayAllUsers(){
		return jdbcTemplate.query("select*from users", new BeanPropertyRowMapper<Member>(Member.class));
	}
	
	public int add(String firstName, String lastName, String email, String phoneNumber, String password) {
		String addMember = "insert into users(firstName, lastName, email, phoneNumber, password) values(?,?,?,?,?)";
		return jdbcTemplate.update(addMember, firstName, lastName, email, phoneNumber, password);
	}
	
}
