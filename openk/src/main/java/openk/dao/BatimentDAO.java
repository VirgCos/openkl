package openk.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import openk.model.Batiment;

public class BatimentDAO {
	public static final String TABLE = "Batiment";
public static final String ID_BATIMENT = "Id_Batiment";
	public static final String ADRESSE = "Adresse";
	public static final String CP = "CP";
	public static final String VILLE = "Ville";
	private static BatimentDAO instance = null;

	public static BatimentDAO getInstance() {
		if (instance == null) {
			instance = new BatimentDAO();
		}
		return instance;
	}

	private BatimentDAO() {
		super();
	}

	public Batiment findById(int idBatiment) {
		return findOne("SELECT * FROM " + TABLE + " WHERE " + ID_BATIMENT + " = " + idBatiment);
	}
	
	private Batiment findOne(String requete) {
		List<Batiment> batiments = find(requete);
		if (batiments != null && batiments.size() > 0) {
			return batiments.get(0);
		} else {
			return null;
		}
	}
	
	private List<Batiment> find(String requete) {
		List<Batiment> listeRetour = new ArrayList<Batiment>();
		try {
			ResultSet rs = Connexion.executeQuery(requete);
			while (rs.next()) {			
				Batiment batiment = new Batiment();
				
				batiment.setIdBatiment(rs.getInt(ID_BATIMENT));
				
				batiment.setAdresse(rs.getString(ADRESSE));
				
				batiment.setCp(rs.getString(CP));
				
				batiment.setVille(rs.getString(VILLE));
				
				listeRetour.add(batiment);
			}
		} catch (SQLException e) {
			System.out.println("Erreur lors de la récupération des données pour la requête " + requete + "' --> " + e.getMessage());
		}
		
		return listeRetour;
	}
}
