package openk.model;

import java.time.LocalDateTime;

public class Cours {
	private int idCours;
	private Matiere matiere;
	private Promotion promotion;
	private Utilisateur formateur;
	private LocalDateTime dateDeb ;
	private LocalDateTime dateFin;
	
	public int getIdCours() {
		return idCours;
	}
	public void setIdCours(int idCours) {
		this.idCours = idCours;
	}
	public Matiere getMatiere() {
		return matiere;
	}
	public void setMatiere(Matiere matiere) {
		this.matiere = matiere;
	}
	public Promotion getPromotion() {
		return promotion;
	}
	public void setPromotion(Promotion promotion) {
		this.promotion = promotion;
	}
	public Utilisateur getFormateur() {
		return formateur;
	}
	public void setFormateur(Utilisateur formateur) {
		this.formateur = formateur;
	}
	public LocalDateTime getDateDeb() {
		return dateDeb;
	}
	public void setDateDeb(LocalDateTime dateDeb) {
		this.dateDeb = dateDeb;
	}
	public LocalDateTime getDateFin() {
		return dateFin;
	}
	public void setDateFin(LocalDateTime dateFin) {
		this.dateFin = dateFin;
	}
	@Override
	public String toString() {
		return "Cours [idCours=" + idCours + ", matiere=" + matiere + ", promotion=" + promotion + ", formateur="
				+ formateur + ", dateDeb=" + dateDeb + ", dateFin=" + dateFin + "]";
	}
}
