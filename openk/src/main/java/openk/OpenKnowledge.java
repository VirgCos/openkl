package openk;
import java.io.IOException;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.layout.BorderPane;
import javafx.stage.Stage;
import openk.dao.Connexion;
import openk.model.Utilisateur;
import openk.vue.AccueilController;

public class OpenKnowledge extends Application {

	/**
	 * La fenetre principale de l'application.
	 */
    private Stage primaryStage;
    
    /**
     * La zone de la fenêtre permettant d'afficher du contenu.
     */
    public static BorderPane rootLayout;
    
    private static Utilisateur utilisateurConnecte;

    @Override
    public void start(Stage primaryStage) {
        this.primaryStage = primaryStage;
        this.primaryStage.setTitle("Open Knowledge");

        // On initialise d'abord la zone de contenu de la fenetre
        initRootLayout();
		
		System.out.println("[Test] mdp hashé ->"+PasswordAuthentication.hash("test"));
        
        // Puis on y charge l'écran d'accueil
        afficherAccueil();
        
        Connexion.getInstance();
    }
    
    /**
     * Initialise la zone de contenu de la fenetre.
     */
    public void initRootLayout() {
        try {
            // Crée un Pane en se basant sur le contenu d'un fichier FXML
            FXMLLoader loader = new FXMLLoader();
            loader.setLocation(OpenKnowledge.class.getResource("vue/RootLayout.fxml"));
            rootLayout = (BorderPane) loader.load();
            
            // Définit ce pane comme zone de contenu de la fenêtre
            Scene scene = new Scene(rootLayout);
            primaryStage.setScene(scene);
            primaryStage.show();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * Charge l'écran d'accueil dans la zone de contenu.
     */
    public void afficherAccueil() {
    	setContent(AccueilController.loadPane());
    }
    
	/**
	 * Retourne la fenêtre principale.
	 * @return
	 */
	public Stage getPrimaryStage() {
		return primaryStage;
	}

    public static void main(String[] args) {
        launch(args);
    }
    
    /**
     * Affiche un pane dans la zone de contenu de la fenêtre.
     * @param pane
     */
    public static void setContent(Node node) {
    	if (node != null) {
    		rootLayout.setCenter(node);
    	} else {
    		System.out.println("Impossible d'afficher le contenu - pane == null");
    	}
    }
    
	public static Utilisateur getUtilisateurConnecte() {
		return utilisateurConnecte;
	}

	public static void setUtilisateurConnecte(Utilisateur utilisateurConnecte) {
		OpenKnowledge.utilisateurConnecte = utilisateurConnecte;
	}
    
    
}