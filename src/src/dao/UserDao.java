package src.dao;
import java.util.List;

public interface UserDao {
	
	public void addUser(User user);

	public void deletUser(Long id);

	public User getUserById(Long id);

	public List<User> getAllUsers();

	public void updateUser(User user);

}
