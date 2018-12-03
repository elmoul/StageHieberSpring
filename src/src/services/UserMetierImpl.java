package src.services;

import java.util.List;

import src.dao.User;
import src.dao.UserDao;

public class UserMetierImpl implements UserMetier {
	
	private UserDao dao;
	
	public void setDao(UserDao dao) {
		this.dao = dao;
	}

	@Override
	public void addUser(User user) {
		dao.addUser(user);

	}

	@Override
	public void deletUser(Long id) {
		dao.deletUser(id);
	}

	@Override
	public User getUserById(Long id) {
		return dao.getUserById(id);
	}

	@Override
	public List<User> getAllUsers() {
		return dao.getAllUsers();
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub

	}

}
