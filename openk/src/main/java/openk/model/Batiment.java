package openk.model;

public class Batiment {
	private int idBatiment;
	private String adresse;
	private String cp;
	private String ville;
	
	public int getIdBatiment() {
		return idBatiment;
	}
	public void setIdBatiment(int idBatiment) {
		this.idBatiment = idBatiment;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	@Override
	public String toString() {
		return "Batiment [idBatiment=" + idBatiment + ", adresse=" + adresse + ", cp=" + cp + ", ville=" + ville + "]";
	}
	
}
