package src.dao.profile;

import java.util.List;

import org.hibernate.Session;

import src.util.HibernateUtil;

public class ProfileDaoImplDatabase implements ProfileDao {

	@Override
	public void addProfile(Profile p) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();

	}

	@Override
	public void deleteProfile(Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Profile p = (Profile) session.load(Profile.class, id);
		session.delete(p);
		session.getTransaction().commit();

	}

	@Override
	public Profile getProfileById(Long id) {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		Profile p = (Profile) session.load(Profile.class, id);
		return p;
	}

	@Override
	public List<Profile> getAllProfiles() {
		Session session =  HibernateUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		List<Profile> profiles =session.createQuery("from Profile").list();
		session.getTransaction().commit();
		return profiles;
	}

}
