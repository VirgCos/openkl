package openk.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import openk.model.Matiere;

public class MatiereDAO {
	public static final String TABLE = "Matiere";
	public static final String ID_MATIERE = "Id_Matiere";
	public static final String DENOMINATION = "Denomination";
	private static MatiereDAO instance = null;

	public static MatiereDAO getInstance() {
		if (instance == null) {
			instance = new MatiereDAO();
		}
		return instance;
	}

	private MatiereDAO() {
		super();
	}

	public Matiere findById(int idMatiere) {
		return findOne("SELECT * FROM " + TABLE + " WHERE " + ID_MATIERE+ " = " + idMatiere);
	}
	
	private Matiere findOne(String requete) {
		List<Matiere> matieres = find(requete);
		if (matieres != null && matieres.size() > 0) {
			return matieres.get(0);
		} else {
			return null;
		}
	}
	
	private List<Matiere> find(String requete) {
		List<Matiere> listeRetour = new ArrayList<Matiere>();
		try {
			ResultSet rs = Connexion.executeQuery(requete);
			while (rs.next()) {			
				Matiere matiere = new Matiere();
				
				matiere.setIdMatiere(rs.getInt(ID_MATIERE));
				
				matiere.setDenomMatiere(rs.getString(DENOMINATION));
				
				listeRetour.add(matiere);
			}
		} catch (SQLException e) {
			System.out.println("Erreur lors de la récupération des données pour la requête " + requete + "' --> " + e.getMessage());
		}
		
		return listeRetour;
	}
}
