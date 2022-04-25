package openk.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import openk.model.Salle;

public class SalleDAO {
	public static final String TABLE = "Salle";
	public static final String ID_SALLE = "Id_Salle";
	public static final String ID_BATIMENT = "Batiment";
	public static final String DENOMINATION = "Denomination";
	public static final String EQT_VIRTUEL = "EquipementVirtuel";
	public static final String NB_PLACES = "NbPlaces";
	private static SalleDAO instance = null;

	public static SalleDAO getInstance() {
		if (instance == null) {
			instance = new SalleDAO();
		}
		return instance;
	}

	private SalleDAO() {
		super();
	}

	public Salle findById(int idSalle) {
		return findOne("SELECT * FROM " + TABLE + " WHERE " + ID_SALLE + " = " + idSalle);
	}
	
	private Salle findOne(String requete) {
		List<Salle> salles = find(requete);
		if (salles != null && salles.size() > 0) {
			return salles.get(0);
		} else {
			return null;
		}
	}
	
	private List<Salle> find(String requete) {
		List<Salle> listeRetour = new ArrayList<Salle>();
		try {
			ResultSet rs = Connexion.executeQuery(requete);
			while (rs.next()) {			
				Salle salle = new Salle();
				
				salle.setIdSalle(rs.getInt(ID_SALLE));
				
				int idBatiment = rs.getInt(ID_BATIMENT);
				salle.setBatiment(BatimentDAO.getInstance().findById(idBatiment));
				
				salle.setDenomSalle(rs.getString(DENOMINATION));
				
				salle.setEqptVirtuel(rs.getString(EQT_VIRTUEL));
				
				salle.setNbPlaces(rs.getInt(NB_PLACES));
				
				listeRetour.add(salle);
			}
		} catch (SQLException e) {
			System.out.println("Erreur lors de la récupération des données pour la requête " + requete + "' --> " + e.getMessage());
		}
		
		return listeRetour;
	}
}
