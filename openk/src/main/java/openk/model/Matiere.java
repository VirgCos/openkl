package openk.model;

public class Matiere {
	private int idMatiere;
	private String denomMatiere;
	
	public int getIdMatiere() {
		return idMatiere;
	}
	public void setIdMatiere(int idMatiere) {
		this.idMatiere = idMatiere;
	}
	public String getDenomMatiere() {
		return denomMatiere;
	}
	public void setDenomMatiere(String denomMatiere) {
		this.denomMatiere = denomMatiere;
	}
	
	@Override
	public String toString() {
		return "Matiere [idMatiere=" + idMatiere + ", denomMatiere=" + denomMatiere + "]";
	}	
}
