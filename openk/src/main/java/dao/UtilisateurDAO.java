package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import openk.Apprenant;
import openk.Utilisateur;

public class UtilisateurDAO {
	private static final String TABLE = "Utilisateur";
	private static final String CLE_PRIMAIRE = "Id_Utilisateur";
	private static final String NOM = "Nom";
	private static final String PRENOM = "Prenom";
	private static final String EMAIL = "Email";
	private static final String TELEPHONE = "Telephone";
	private static final String TYPE = "Type";
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

	
	public Utilisateur read(int user_id) {
	Utilisateur utilisateur = null;
	/*if (donnees.containsKey(id)) {
	System.out.println("récupéré");
	utilisateur=donnees.get(id);
	}
	else {*/
	System.out.println("recherché dans la BD");
	try {

	String requete = "SELECT * FROM "+TABLE+" WHERE "+CLE_PRIMAIRE+" = "+user_id;
	ResultSet rs = Connexion.executeQuery(requete);
	rs.next();
	int id = rs.getInt(CLE_PRIMAIRE);
	String Nom = rs.getString(NOM);
	String Prenom = rs.getString(PRENOM);
	String Email = rs.getString(EMAIL);
	String Telephone = rs.getString(TELEPHONE);
	String Type = rs.getString(TYPE);
	utilisateur = new Utilisateur (id, Nom, Prenom, Email, Telephone, Type);
	//donnees.put(id, utilisateur);
	} catch (SQLException e) {
	//e.printStackTrace();
	}
	//}
	return Utilisateur;
	}

	
}
