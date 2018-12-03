package src.dao.profile;

import java.util.List;



public interface ProfileDao {
	
	public void addProfile(Profile p);

	public void deleteProfile(Long id);

	public Profile getProfileById(Long id);

	public List<Profile> getAllProfiles();
	
}
