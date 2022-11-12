package com.watermonitor.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.watermonitor.entity.Address;
import com.watermonitor.entity.Appliances;
import com.watermonitor.entity.User;
import com.watermonitor.repository.UserRepository;


@Service
public class UserService {

	@Autowired
	UserRepository userRepository;
	
	public void saveUser(User p1) {
		userRepository.save(p1);
	}
	
	public List<User> getAllUsers() {
		return userRepository.findAll();
	}
	
	public void deleteUserById(String email) {
		userRepository.deleteById(email);
	}
	
	public void deleteAllUsers() {
		userRepository.deleteAll();
	}
	
	public User findUserLogin(String email, String password) {
		return userRepository.login(email, password);
	}
	
	public Optional<User> getUserById(String email) {
		return userRepository.findById(email);
	}
	
	public void editStudentInfo(User user, User originalUser) {
		user.setAddress(originalUser.getAddress());
		user.setAppliances(originalUser.getAppliances());
		userRepository.save(user);
		}
	}

