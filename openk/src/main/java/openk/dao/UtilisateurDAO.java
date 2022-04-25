package openk.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import openk.model.Utilisateur;

public class UtilisateurDAO {
	private static final String TABLE = "Utilisateur";
	private static final String CLE_PRIMAIRE = "Id_Utilisateur";
	public static final String NOM = "Nom";
	public static final String PRENOM = "Prenom";
	public static final String EMAIL = "Email";
	public static final String TELEPHONE = "Telephone";
	public static final String TYPE = "Type";
	public static final String MDP = "mdp";
	private static UtilisateurDAO instance = null;

	public static UtilisateurDAO getInstance() {
		if (instance == null) {
			instance = new UtilisateurDAO();
		}
		return instance;
	}

	private UtilisateurDAO() {
		super();
	}

	public Utilisateur findById(int user_id) {
		Utilisateur utilisateur = null;
		try {

			String requete = "SELECT * FROM " + TABLE + " WHERE " + CLE_PRIMAIRE + " = " + user_id;
			ResultSet rs = Connexion.executeQuery(requete);
			rs.next();
			
			utilisateur = fromResultSet(rs);
		} catch (SQLException e) {
			System.out.println("Erreur lors de la récupération de l'utilisateur : " + user_id + ". " + e.getMessage());
		}

		return utilisateur;
	}

	public List<Utilisateur> findAll() {
		List<Utilisateur> utilisateurs = new ArrayList<>();
		try {
			String requete = "SELECT * FROM " + TABLE;
			ResultSet rs = Connexion.executeQuery(requete);
			while (rs.next()) {
				utilisateurs.add(fromResultSet(rs));
			}
		} catch (SQLException e) {
			System.out.println("Erreur lors de la récupération des utilisateurs : " + e.getMessage());
		}
		
		return utilisateurs;
	}
	
	public Utilisateur findBy(String champ, String valeur) {
		Utilisateur utilisateur = null;
		try {

			String requete = "SELECT * FROM " + TABLE + " WHERE " + champ + " = '" + valeur + "'";
			ResultSet rs = Connexion.executeQuery(requete);
			rs.next();
			
			utilisateur = fromResultSet(rs);
		} catch (SQLException e) {
			System.out.println("Erreur lors de la récupération de l'utilisateur : " + "(champ='" + champ + "', valeur='" + valeur + "'" + e.getMessage());
		}

		return utilisateur;
	}
	
	private Utilisateur fromResultSet(ResultSet rs) throws SQLException {
		int id = rs.getInt(CLE_PRIMAIRE);
		String nom = rs.getString(NOM);
		String prenom = rs.getString(PRENOM);
		String email = rs.getString(EMAIL);
		String telephone = rs.getString(TELEPHONE);
		String type = rs.getString(TYPE);
		String mdp = rs.getString(MDP);
		Utilisateur utilisateur = new Utilisateur(id, nom, prenom, email, telephone, type, mdp);
		
		return utilisateur;
	}
}
