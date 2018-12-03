package src.dao.profile;

public class Profile {
	private Long id;
	private String libelle;
	
	public Profile() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Profile(String libelle) {
		super();
		this.libelle = libelle;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}
	
	
}
