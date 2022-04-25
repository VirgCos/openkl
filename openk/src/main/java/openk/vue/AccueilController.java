package openk.vue;

import java.io.IOException;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import openk.OpenKnowledge;
import openk.PasswordAuthentication;
import openk.dao.UtilisateurDAO;
import openk.model.Utilisateur;

public class AccueilController {
			
	public static AnchorPane loadPane() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(OpenKnowledge.class.getResource("vue/accueil.fxml"));
            return (AnchorPane) loader.load();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return null;
	}
	
	@FXML
	private void afficherInscription(ActionEvent event) {
		OpenKnowledge.setContent(InscriptionController.loadPane());
	}

	@FXML
	private void connecterUtilisateur(ActionEvent event) {
		Node source = (Node) event.getSource();
		Scene scene = source.getScene();
		
		Label msgErreurMdp = (Label) scene.lookup("#erreur-mdp");
		msgErreurMdp.setVisible(false);
		
		TextField emailSaisi = (TextField) scene.lookup("#txt-email");
		PasswordField mdpSaisi = (PasswordField) scene.lookup("#txt-mdp");
		
		Utilisateur utilisateur = UtilisateurDAO.getInstance().findBy(UtilisateurDAO.EMAIL, emailSaisi.getText());
		if (utilisateur != null && PasswordAuthentication.authenticate(mdpSaisi.getText(), utilisateur.getMdp())) {
			OpenKnowledge.setUtilisateurConnecte(utilisateur);
			OpenKnowledge.setContent(ChoixController.loadPane());
		} else {
			msgErreurMdp.setVisible(true);
		}
	}

}
