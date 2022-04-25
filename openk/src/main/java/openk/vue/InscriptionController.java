package openk.vue;

import java.io.IOException;

import javafx.fxml.FXMLLoader;
import javafx.scene.layout.AnchorPane;
import openk.OpenKnowledge;

public class InscriptionController {
		
	public static AnchorPane loadPane() {
        try {
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(OpenKnowledge.class.getResource("vue/page_inscription.fxml"));
            return (AnchorPane) loader.load();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return null;
	}
	
}
