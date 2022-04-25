package openk.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

import openk.model.Cours;

public class CoursDAO {
	public static final String TABLE = "Cours";
	public static final String ID_COURS = "Id_Cours";
	public static final String DATE_DEB = "dateDeb";
	public static final String DATE_FIN = "dateFin";
	public static final String ID_MATIERE = "Id_Matiere";
	public static final String ID_PROMOTION = "Id_Promotion";
	public static final String ID_FORMATEUR = "Id_Formateur";
	
	private static CoursDAO instance = null;

	public static CoursDAO getInstance() {
		if (instance == null) {
			instance = new CoursDAO();
		}
		return instance;
	}

	private CoursDAO() {
		super();
	}

	public List<Cours> findByDates(LocalDate dateDeb, LocalDate dateFin) {
		return find("SELECT * FROM " + TABLE + " WHERE " + DATE_DEB + " >= '" + dateDeb + "' AND " + DATE_FIN + " <= '"+ dateFin + "'");
	}
	
	public Cours findById(int idCours) {
		return findOne("SELECT * FROM " + TABLE + " WHERE " + ID_COURS + " = " + idCours);
	}
	
	private Cours findOne(String requete) {
		List<Cours> cours = find(requete);
		if (cours != null && cours.size() > 0) {
			return cours.get(0);
		} else {
			return null;
		}
	}
	
	private List<Cours> find(String requete) {
		List<Cours> listeRetour = new ArrayList<Cours>();
		try {
			ResultSet rs = Connexion.executeQuery(requete);
			while (rs.next()) {			
				Cours cours = new Cours();
				
				cours.setIdCours(rs.getInt(ID_COURS));
				
				Timestamp dateDeb = rs.getTimestamp(DATE_DEB);
				cours.setDateDeb(dateDeb.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime());
				
				Timestamp dateFin = rs.getTimestamp(DATE_FIN);
				cours.setDateFin(dateFin.toInstant().atZone(ZoneId.systemDefault()).toLocalDateTime());
				
				int idMatiere = rs.getInt(ID_MATIERE);
				cours.setMatiere(MatiereDAO.getInstance().findById(idMatiere));
				
				int idFormateur = rs.getInt(ID_FORMATEUR);
				cours.setFormateur(UtilisateurDAO.getInstance().findById(idFormateur));
				
				listeRetour.add(cours);
			}
		} catch (SQLException e) {
			System.out.println("Erreur lors de la récupération des données pour la requête " + requete + "' --> " + e.getMessage());
		}
		
		return listeRetour;
	}
}
