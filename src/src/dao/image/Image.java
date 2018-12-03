package src.dao.image;

public class Image {
	private Long id;
	private Long idType;
	private String titre;
	
	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Image(Long idType, String titre) {
		super();
		this.idType = idType;
		this.titre = titre;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getIdType() {
		return idType;
	}

	public void setIdType(Long idType) {
		this.idType = idType;
	}

	public String getTitre() {
		return titre;
	}

	public void setTitre(String titre) {
		this.titre = titre;
	}
	
	
}
