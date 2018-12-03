package src.dao;

import java.util.List;

import org.hibernate.Session;

import src.util.HibernateUtil;

public class UserDaoImplDatabase implements UserDao{

	@Override
	public void addUser(User user) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		
	}

	@Override
	public void deletUser(Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User u = (User) session.load(User.class, id);
		session.delete(u);
		session.getTransaction().commit();
		
	}

	@Override
	public User getUserById(Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		User u = (User) session.load(User.class, id);
		return u;
	}

	
	
	@Override
	public List<User> getAllUsers() {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<User> users =session.createQuery("from User").list();
		session.getTransaction().commit();
		return users;
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		
	}
	
	public void init() {
		System.out.println("hello world !");
		
	}

}
