package src.dao;

import java.util.List;
import java.util.ArrayList;

public class UserDaoImpl implements UserDao {
	
	private List<User> users =new ArrayList<User>();
	
	public void init() {
		System.out.println("hello world !");
		users.add(new User("ahmed","amoul","ahmed.amoul@gmail.com","annonyme","manager","username1","password1"));
		users.add(new User("malek","bounif","malek.bounif@gmail.com","intervenant","directeur","username","password1"));
	}
	
	
	@Override
	public void addUser(User user) {
		user.setId(new Long(users.size()+1));
		users.add(user);

	}

	@Override
	public void deletUser(Long id) {
		users.remove(getUserById(id));

	}

	@Override
	public User getUserById(Long id) {
		User user=null;
		for(User u:users) {
			if(u.getId().equals(id)) {
				user=u;
			}
		}
		return user;
	}

	@Override
	public List<User> getAllUsers() {
		return users;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub

	}

}
