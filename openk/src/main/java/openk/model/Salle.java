package openk.model;

public class Salle {
	private int idSalle;
	private String denomSalle;
	private int nbPlaces;
	private String eqptVirtuel;
	private Batiment batiment ;
	
	public int getIdSalle() {
		return idSalle;
	}
	public void setIdSalle(int idSalle) {
		this.idSalle = idSalle;
	}
	public String getDenomSalle() {
		return denomSalle;
	}
	public void setDenomSalle(String denomSalle) {
		this.denomSalle = denomSalle;
	}
	public int getNbPlaces() {
		return nbPlaces;
	}
	public void setNbPlaces(int nbPlaces) {
		this.nbPlaces = nbPlaces;
	}
	public String getEqptVirtuel() {
		return eqptVirtuel;
	}
	public void setEqptVirtuel(String eqptVirtuel) {
		this.eqptVirtuel = eqptVirtuel;
	}
	public Batiment getBatiment() {
		return batiment;
	}
	public void setBatiment(Batiment batiment) {
		this.batiment = batiment;
	}
	@Override
	public String toString() {
		return "Salle [idSalle=" + idSalle + ", denomSalle=" + denomSalle + ", nbPlaces=" + nbPlaces + ", eqptVirtuel="
				+ eqptVirtuel + ", batiment=" + batiment + "]";
	}
}