package openk.model;
/**
 * @author tycos
 *
 */
public class Utilisateur {
	public int user_id;
	public String nom;
	public String prenom;
	public String email;
	public String telephone;
	public String type;
	public String mdp;
	
	public Utilisateur(String nom, String prenom, String email, String telephone, String type, String mdp) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.telephone = telephone;
		this.type = type;
		this.mdp = mdp;
	}
	
	public Utilisateur(int user_id, String nom, String prenom, String email, String telephone, String type, String mdp) {
		this(nom, prenom, email, telephone, type, mdp);
		this.user_id = user_id;
	}
	
	public int getUserId() {
		return user_id;
	}

	public void setUserId(int id) {
		this.user_id = id;
	}
	
	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}
	
	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String toString() {
		return "Utilisateur [id=" + user_id + ", nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", telephone=" + email +", telephone=" + telephone + ", type=" + type + ", mdp=" + mdp + "]";
	}

}
