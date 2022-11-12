package com.watermonitor.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.watermonitor.entity.User;

@Repository
	public interface UserRepository extends JpaRepository<User, String>{

		@Query("SELECT s FROM User s WHERE s.email=?1 AND s.password=?2")
		public User login(String email, String password);
	}


