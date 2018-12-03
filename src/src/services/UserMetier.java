package src.services;

import java.util.List;

import src.dao.User;

public interface UserMetier {
	
	public void addUser(User user);

	public void deletUser(Long id);

	public User getUserById(Long id);

	public List<User> getAllUsers();

	public void updateUser(User user);
}
