package src.services;

import java.util.List;

import src.dao.profile.Profile;
import src.dao.profile.ProfileDao;

public class ProfileMetierImpl implements ProfileMetier {
	
	private ProfileDao dao;

	public void setDao(ProfileDao dao) {
		this.dao = dao;
	}

	@Override
	public void addProfile(Profile p) {
		dao.addProfile(p);

	}

	@Override
	public void deleteProfile(Long id) {
		dao.deleteProfile(id);

	}

	@Override
	public Profile getProfileById(Long id) {
		return dao.getProfileById(id);
	}

	@Override
	public List<Profile> getAllProfiles() {
		return dao.getAllProfiles();
	}

}
