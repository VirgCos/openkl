package openk.vue;

import java.io.IOException;
import java.net.URL;
import java.time.LocalDate;
import java.time.temporal.WeekFields;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.fxml.Initializable;
import javafx.scene.layout.BorderPane;
import openk.OpenKnowledge;
import openk.dao.SeanceDAO;
import openk.model.JourPlanning;
import openk.model.Seance;

public class PlanningController implements Initializable {
	private Map<String, JourPlanning> planningSemaine = new HashMap<>();
	
	@FXML
	private JourPlanning lundi = new JourPlanning();
	
	@FXML
	private JourPlanning mardi = new JourPlanning();
	
	@FXML
	private JourPlanning mercredi = new JourPlanning();
	
	@FXML
	private JourPlanning jeudi = new JourPlanning();
	
	@FXML
	private JourPlanning vendredi = new JourPlanning();
	
	private final static String LUNDI = "lundi";
	private final static String MARDI = "mardi";
	private final static String MERCREDI = "mercredi";
	private final static String JEUDI = "jeudi";
	private final static String VENDREDI = "vendredi";
	
	private int semaineCourante = 0;
	private int semaineAffichee = 0;

	public static BorderPane loadPane() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(OpenKnowledge.class.getResource("vue/Planning.fxml"));
            return (BorderPane) loader.load();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return null;
	}
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		// Pour déterminer la semaine en cours, on commence par trouver la date du jour
		// et on isole ses composants (jour, mois, année)
		LocalDate today = LocalDate.now();
		WeekFields weekFields = WeekFields.of(Locale.getDefault()); 
		this.semaineCourante = today.get(weekFields.weekOfWeekBasedYear());
		
		this.semaineAffichee = 16;
		
		planningSemaine.put(LUNDI, lundi);
		planningSemaine.put(MARDI, mardi);
		planningSemaine.put(MERCREDI, mercredi);
		planningSemaine.put(JEUDI, jeudi);
		planningSemaine.put(VENDREDI, vendredi);
		
		chargerPlanning();
	}
	
	@FXML
	private void semaineSuivante(ActionEvent event) {
		this.semaineAffichee++;
		this.chargerPlanning();
	}

	@FXML
	private void semainePrecedente(ActionEvent event) {
		this.semaineAffichee--;
		this.chargerPlanning();
	}

	private void chargerPlanning() {
		LocalDate today = LocalDate.now();
		today = today.plusDays(7 * (this.semaineAffichee - this.semaineCourante));
		
		int year = today.getYear();
		int month = today.getMonthValue();
		int dayOfMonth = today.getDayOfMonth();

		// Le jour actuel de la semaine (lundi, mardi, etc) va nous servir à calculer les dates des autres jours
		int dayOfWeek = today.getDayOfWeek().getValue();
		
		// Imaginons que nous sommes le jeudi (le 4e jour)...
		
		// Pour calculer la date du lundi (1er jour), on retire 3 jours (4 - 1) à la date courante.
		LocalDate lundi = LocalDate.of(year, month, dayOfMonth);
		lundi = today.minusDays(dayOfWeek - 1);
		
		// Pour calculer la date du mardi (2er jour), on retire 2 jours (4 - 2) à la date courante.
		LocalDate mardi = LocalDate.of(year, month, dayOfMonth);
		mardi = today.minusDays(dayOfWeek - 2);
		List<Seance> seancesLundi = SeanceDAO.getInstance().findByDates(lundi, mardi);
		chargerJour(LUNDI, seancesLundi);
		
		// Pour calculer la date du mercredi (3e jour), on retire 1 jour (4 - 3) à la date courante.
		LocalDate mercredi = LocalDate.of(year, month, dayOfMonth);
		mercredi = today.minusDays(dayOfWeek - 3);
		List<Seance> seancesMardi = SeanceDAO.getInstance().findByDates(mardi, mercredi);
		chargerJour(MARDI, seancesMardi);
		
		// Pour calculer la date du jeudi (4e jour), on retire 0 jour (4 - 4) à la date courante.
		LocalDate jeudi = LocalDate.of(year, month, dayOfMonth);
		jeudi = today.minusDays(dayOfWeek - 4);
		List<Seance> seancesMercredi = SeanceDAO.getInstance().findByDates(mercredi, jeudi);
		chargerJour(MERCREDI, seancesMercredi);
		
		// Pour calculer la date du vendredi (5e jour), on retire -1 jour (4 - 5), c'est à dire qu'on ajoute 1 jour à la date courante.
		LocalDate vendredi = LocalDate.of(year, month, dayOfMonth);
		vendredi = today.minusDays(dayOfWeek - 5);
		List<Seance> seancesJeudi = SeanceDAO.getInstance().findByDates(jeudi, vendredi);
		chargerJour(JEUDI, seancesJeudi);
		
		// Pour calculer la date du samedi (6e jour), on retire -2 jour (4 - 6), c'est à dire qu'on ajoute 2 jours à la date courante.
		LocalDate samedi = LocalDate.of(year, month, dayOfMonth);
		samedi = today.minusDays(dayOfWeek - 6);
		List<Seance> seancesVendredi = SeanceDAO.getInstance().findByDates(vendredi, samedi);
		chargerJour(VENDREDI, seancesVendredi);
		
	}
	
	private void chargerJour(String jour, List<Seance> seances) {
		JourPlanning jourPlanning = planningSemaine.get(jour);
		jourPlanning.matin1Property().set("");
		jourPlanning.matin2Property().set("");
		jourPlanning.am1Property().set("");
		jourPlanning.am2Property().set("");
		
		if (seances != null && seances.size() > 0) {
			for (Seance seance : seances) {
				if (seance.getDateDeb().getHour() < 10) {
					jourPlanning.matin1Property().set(seance.getCours().getMatiere().getDenomMatiere());
				} else if (seance.getDateDeb().getHour() < 12) {
					jourPlanning.matin2Property().set(seance.getCours().getMatiere().getDenomMatiere());
				} else if (seance.getDateDeb().getHour() < 14) {
					jourPlanning.am1Property().set(seance.getCours().getMatiere().getDenomMatiere());
				} else if (seance.getDateDeb().getHour() < 17) {
					jourPlanning.am2Property().set(seance.getCours().getMatiere().getDenomMatiere());
				}
			}
		}
	}

	public JourPlanning getLundi() {
		return lundi;
	}

	public void setLundi(JourPlanning lundi) {
		this.lundi = lundi;
	}

	public JourPlanning getMardi() {
		return mardi;
	}

	public void setMardi(JourPlanning mardi) {
		this.mardi = mardi;
	}

	public JourPlanning getMercredi() {
		return mercredi;
	}

	public void setMercredi(JourPlanning mercredi) {
		this.mercredi = mercredi;
	}

	public JourPlanning getJeudi() {
		return jeudi;
	}

	public void setJeudi(JourPlanning jeudi) {
		this.jeudi = jeudi;
	}

	public JourPlanning getVendredi() {
		return vendredi;
	}

	public void setVendredi(JourPlanning vendredi) {
		this.vendredi = vendredi;
	}
	
}
