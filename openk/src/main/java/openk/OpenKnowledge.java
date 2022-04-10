package openk;
import dao.Connexion;
import dao.UtilisateurDAO;

public class OpenKnowledge {
	
	

	public static void main(String[] args) {
		Connexion.getInstance();
		UtilisateurDAO.getInstance();
		//TODO
				
	}

}
