package com.projetinfo732.fr.interfaceGraphique.pages;

import java.util.Date;
import java.util.HashMap;

import com.projetinfo732.fr.Enseignement.Module.Travail;
import com.projetinfo732.fr.Personne.Eleve;
import com.projetinfo732.fr.utils.Initialize;

import javafx.event.EventHandler;
import javafx.geometry.HPos;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.geometry.VPos;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.Border;
import javafx.scene.layout.BorderStroke;
import javafx.scene.layout.BorderStrokeStyle;
import javafx.scene.layout.BorderWidths;
import javafx.scene.layout.CornerRadii;
import javafx.scene.layout.GridPane;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;
import javafx.scene.text.TextAlignment;
import javafx.stage.Stage;


public class AccueilEleve extends Parent{

	  
    public AccueilEleve(Stage primaryStage,Eleve eleve) {
    	
    	GridPane gridParent = new GridPane();
    	gridParent.setAlignment(Pos.CENTER);
    	gridParent.setHgap(10);
        gridParent.setVgap(10);
        gridParent.setPadding(new Insets(25, 25, 25, 25));
        
        String nom = eleve.getNom();
        String prenom = eleve.getPrenom();
        String filiere = eleve.getPromo().getFiliere().getNom();
        
        // Ajout Nom Prenom
        Text NomPrenomText = new Text(nom.toUpperCase() + " " + prenom + "   " + filiere);
        NomPrenomText.setId("NomPrenomText");
        gridParent.add(NomPrenomText, 0, 0, 1, 1);
        
        NomPrenomText.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                // Load the next page
                try {
                	CompteEleve compteEleve = new CompteEleve(primaryStage,eleve);
                    Scene scene = new Scene(compteEleve);
                    primaryStage.setScene(scene);
                    primaryStage.show();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        });
        
        // Ajout Lien Module
        Text ModuleText = new Text("Mes modules");
        ModuleText.setId("ModuleText");
        gridParent.add(ModuleText, 5, 0, 1, 1);
        
        ModuleText.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
                try {
                	ModuleInfo moduleInfo = new ModuleInfo(primaryStage,eleve);
                    Scene scene = new Scene(moduleInfo);
                    primaryStage.setScene(scene);
                    primaryStage.show();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        });
        
        GridPane gridtitleright = new GridPane();
        gridtitleright.setPadding(new Insets(0, 0, 0, 0));
        
        // Ajout Lien Module
        Text PlanningText = new Text("Planning");
        PlanningText.setId("PlanningText");
        gridtitleright.add(PlanningText, 0, 0, 1, 1);
        
        PlanningText.setOnMouseClicked(new EventHandler<MouseEvent>() {
            @Override
            public void handle(MouseEvent event) {
            	try {

                	Calendar c = new Calendar(primaryStage,eleve);
                	
                    Scene scene = new Scene(c);
                    primaryStage.setScene(scene);
                    primaryStage.show();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        });
        
        Button decoButton = new Button("D�connexion");
        decoButton.setOnAction(event -> {
        	Initialize.resetObject(eleve);
        	
        	LoginForm LoginForm = new LoginForm(primaryStage);
    		// Add a style sheet to the scene
            Scene scene = new Scene(LoginForm, 290, 220);
            scene.getStylesheets().add(getClass().getResource("css/login.css").toExternalForm());
            primaryStage.setScene(scene);
            primaryStage.show();
        });
        
        Text gap1 = new Text("            ");
        gridtitleright.add(gap1, 1, 0, 1, 1);
        
        gridtitleright.add(decoButton,2,0,1,1);
        decoButton.setAlignment(Pos.BOTTOM_RIGHT);
        gridParent.add(gridtitleright,10,0,1,1);
        
        
        GridPane MoyenneGrid = new GridPane();
        MoyenneGrid.setId("MoyenneGrid");
        // Ajout Semaine
        Text MoyenneText = new Text("Moyenne g�n�rale : ");
        MoyenneText.setId("MoyenneText");
        Text MoyenneNote = new Text("" + eleve.getGlobalMean());
        
        
        if(eleve.getGlobalMean() < 10.0) {
        	MoyenneNote.setStyle("-fx-font-size: 15px; -fx-fill: red;");
        }
        else if(eleve.getGlobalMean() < 13.0){
        	MoyenneNote.setStyle("-fx-font-size: 15px; -fx-fill: orange;");
        }
        else {
        	MoyenneNote.setStyle("-fx-font-size: 15px; -fx-fill: green;");
        }
        
        MoyenneGrid.add(MoyenneText, 0, 0);
        MoyenneGrid.add(MoyenneNote, 1, 0);
        gridParent.add(MoyenneGrid, 5, 7, 1, 1);
        
        
        Text MoyenneClasseText = new Text("Moyenne de classe : " + eleve.getPromo().getGlobalMean());
        MoyenneClasseText.setId("MoyenneText");
        gridParent.add(MoyenneClasseText, 10, 7, 1, 1);
        
        
        
        // Create the child grid panes
        GridPane childGrid1 = new GridPane();
        childGrid1.setHgap(10);
        childGrid1.setVgap(10);
        childGrid1.setPadding(new Insets(10, 10, 10, 10));
        
        HashMap<Travail, Date> rendu = eleve.getNextTravaux();
        
        int countrendu = 0;
        for (Travail travail : rendu.keySet()) {
        	Text noteText = new Text("[" + travail.getModule().getNom() + "] " + travail.getNom() + " -> Date : " + rendu.get(travail));
        	noteText.setId("RenduText");
        	childGrid1.add(noteText, 0, countrendu, 1, 1);
    
        	countrendu+=1;
		}
        
        GridPane childGrid2 = new GridPane();
        childGrid2.setHgap(10);
        childGrid2.setVgap(10);
        childGrid2.setPadding(new Insets(10, 10, 10, 10));
        
        int[] charge = eleve.getCharged();
        // Ajout Semaine
        Text SemaineText = new Text("Semaine " + charge[0] +" : ");
        SemaineText.setId("SemaineText");
        childGrid2.add(SemaineText, 0, 0, 1, 1);
        
        
        GridPane SemaineGrid = new GridPane();
        SemaineGrid.setId("SemaineGrid");
        
        
        Text gap = new Text("            ");
        SemaineGrid.add(gap, 0, 0, 1, 1);
        
        switch (charge[1]) {
			case 1:
				SemaineGrid.setStyle("-fx-background-color: #19bf1e; -fx-border-color: black; -fx-border-width: 1;");
				break;
			case 2:
				SemaineGrid.setStyle("-fx-background-color: #e3a214; -fx-border-color: black; -fx-border-width: 1;");
				break;
			case 3:
				SemaineGrid.setStyle("-fx-background-color: #ab0e0e; -fx-border-color: black; -fx-border-width: 1;");
				break;
	
			default:
				break;
		}
        
        childGrid2.add(SemaineGrid, 1, 0, 1, 1);
        GridPane childGrid3 = new GridPane();
        childGrid3.setHgap(10);
        childGrid3.setVgap(10);
        childGrid3.setPadding(new Insets(10, 10, 10, 10));
        
        HashMap<Travail, double[]> lastNotes = eleve.getLastNotes();
        
        int count = 0;
        for (Travail travail : lastNotes.keySet()) {
        	Text noteText = new Text("[" + travail.getModule().getNom() + "] " + travail.getNom() + " -> Note : " + lastNotes.get(travail)[0] +" | Coef : " + lastNotes.get(travail)[1]);
        	noteText.setId("NoteText");
        	childGrid3.add(noteText, 0, count, 1, 1);
    
        	count+=1;
		}
        
        
        
        
        gridParent.setId("parent-grid-pane");
        childGrid1.getStyleClass().add("grid-pane");
        childGrid2.getStyleClass().add("grid-pane");
        childGrid3.getStyleClass().add("grid-pane");
        
        // Add the child grid panes to the parent grid pane
        Text titreGrid1 = new Text("Prochaine �ch�ance");
        titreGrid1.setId("titre-grid");
        Text titreGrid2 = new Text("Niveau de charge");
        titreGrid2.setId("titre-grid");
        Text titreGrid3 = new Text("Derni�res notes");
        titreGrid3.setId("titre-grid");
        
        gridParent.add(titreGrid1, 0, 4, 1, 1);
        gridParent.add(titreGrid2, 5, 4, 1, 1);
        gridParent.add(titreGrid3, 10, 4, 1, 1);
        
        gridParent.add(childGrid1, 0, 5, 1, 1);
        gridParent.add(childGrid2, 5, 5, 1, 1);
        gridParent.add(childGrid3, 10, 5, 1, 1);
        

        // Add the grid pane to the root node
        this.getChildren().add(gridParent);
    }
}
