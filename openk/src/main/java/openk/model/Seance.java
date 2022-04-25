package openk.model;

import java.time.LocalDateTime;


public class Seance {
	private Cours cours;
	private Salle salle;
	private LocalDateTime dateDeb;
	private LocalDateTime dateFin;
	
	public Cours getCours() {
		return cours;
	}
	public void setCours(Cours cours) {
		this.cours = cours;
	}
	public Salle getSalle() {
		return salle;
	}
	public void setSalle(Salle salle) {
		this.salle = salle;
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
		return "Seance [cours=" + cours + ", salle=" + salle + ", dateDeb=" + dateDeb + ", dateFin=" + dateFin + "]";
	}
	
}
