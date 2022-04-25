package openk.vue;

import java.io.IOException;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.layout.AnchorPane;
import openk.OpenKnowledge;

public class ChoixController {
		
	public static AnchorPane loadPane() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(OpenKnowledge.class.getResource("vue/choix.fxml"));
            return (AnchorPane) loader.load();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return null;
	}
	
	@FXML
	private void afficherPlanning(ActionEvent event) {
		OpenKnowledge.setContent(PlanningController.loadPane());
	}

}
