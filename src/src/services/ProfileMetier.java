package src.services;

import java.util.List;

import src.dao.profile.Profile;

public interface ProfileMetier {
	
	public void addProfile(Profile p);

	public void deleteProfile(Long id);

	public Profile getProfileById(Long id);

	public List<Profile> getAllProfiles();
}
