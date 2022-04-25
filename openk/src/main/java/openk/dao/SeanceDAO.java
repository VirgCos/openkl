package openk.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

import openk.model.Seance;

public class SeanceDAO {
	private static final String TABLE = "Seance";
	private static final String COURS = "Id_Cours";
	public static final String DATE_DEB = "dateDeb_Seance";
	public static final String DATE_FIN = "dateFin_Seance";
	public static final String SALLE = "Id_Salle";
	private static SeanceDAO instance = null;

	public static SeanceDAO getInstance() {
		if (instance == null) {
			instance = new SeanceDAO();
		}
		return instance;
	}

	private SeanceDAO() {
		super();
	}

	public List<Seance> findByDates(LocalDate dateDeb, LocalDate dateFin) {
		String query = "SELECT * FROM " + TABLE + " WHERE " + DATE_DEB + " >= CONVERT(DATETIME, '" + dateDeb + "', 102) AND " + DATE_FIN + " <= CONVERT(DATETIME, '"
				+ dateFin + "', 102)";
		return find(query);
	}

	private Seance findOne(String requete) {
		List<Seance> seances = find(requete);
		if (seances != null && seances.size() > 0) {
			return seances.get(0);
		} else {
			return null;
		}
	}

	private List<Seance> find(String requete) {
		List<Seance> listeRetour = new ArrayList<Seance>();
		try {
			ResultSet rs = Connexion.executeQuery(requete);
			while (rs.next()) {	
				Seance seance = new Seance();
				
				Timestamp dateDeb = rs.getTimestamp(DATE_DEB);
				seance.setDateDeb(dateDeb. toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime());
				
				Timestamp dateFin = rs.getTimestamp(DATE_FIN);
				seance.setDateFin(dateFin.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime());
				
				int idSalle = rs.getInt(SALLE);
				seance.setSalle(SalleDAO.getInstance().findById(idSalle));
				
				int idCours = rs.getInt(COURS);
				seance.setCours(CoursDAO.getInstance().findById(idCours));
				
				listeRetour.add(seance);
			}
		} catch (SQLException e) {
			System.out.println("Erreur lors de la récupération des données pour la requête " + requete + "' --> " + e.getMessage());
		}
		
		return listeRetour;
	}
}
