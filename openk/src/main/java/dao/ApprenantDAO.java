package dao;

public class ApprenantDAO {
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import openk.Apprenant;

public class ApprenantDAO {
	private static final String TABLE = "Apprenant";
	private static final String CLE_PRIMAIRE = "Id_Utilisateur";
	private static UtilisateurDAO instance = null;
	
	public static UtilisateurDAO getInstance() {
		if (instance == null) {
			instance = new UtilisateurDAO();
		}
		return instance;
	}
	
	private ApprenantDAO() {
		super();
	}

	
	public Apprenant read(int user_id) {
	Apprenant apprenant = null;
	/*if (donnees.containsKey(id)) {
	System.out.println("récupéré");
	apprenant=donnees.get(id);
	}
	else {*/
	System.out.println("recherché dans la BD");
	try {

	String requete = "SELECT * FROM "+TABLE+" WHERE "+CLE_PRIMAIRE+" = "+user_id;
	ResultSet rs = Connexion.executeQuery(requete);
	rs.next();
	int id = rs.getInt(CLE_PRIMAIRE);
	apprenant = new Apprenant (id);
	//donnees.put(id, apprenant);
	} catch (SQLException e) {
	//e.printStackTrace();
	}
	//}
	return apprenant;
	}

}
