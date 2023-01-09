package com.projetinfo732.fr.Enseignement;

import java.util.ArrayList;
import java.util.List;

public enum Filiere {

	IDU3("IDU3", "La meilleure filiere en fait", new ArrayList<UE>()), SNI3("SNI3", "Les copieurs d'IDU", new ArrayList<UE>()), PEIP1("PEIP1", "Animaux", new ArrayList<UE>()), MM3("MEUHMEUH3", "MEUUUUUUH", new ArrayList<UE>()),
	IDU4("IDU4", "La meilleure filiere en fait mais en encore mieux", new ArrayList<UE>()), SNI4("SNI4", "Les copieurs d'IDU v4", new ArrayList<UE>()), PEIP2("PEIP2", "Animaux upgrade", new ArrayList<UE>()), MM4("MEUHMEUH4", "MEUUUUUUH", new ArrayList<UE>()),
	IDU5("IDU5", "La meilleure filiere en fait mais pas jamais vu", new ArrayList<UE>()), SNI5("SNI5", "Les copieurs d'IDU v5", new ArrayList<UE>()), MM5("MEUHMEUH5", "MEUUUUUUH", new ArrayList<UE>()), DIPLOME("Diplomés", "Bravo à vous, vous êtes diplomés", new ArrayList<UE>());
	
	private String nom;
	private String description;
	private List<UE> liste_ue = new ArrayList<>();
	
	
	Filiere(String nom, String description, ArrayList<UE> liste_ue) {
		this.nom = nom;
		this.description = description;
		this.liste_ue = liste_ue;
	}
	
	public void addUe(UE... ues) {
		for(UE ue : ues) {
			this.liste_ue.add(ue);
		}
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<UE> getListe_ue() {
		return liste_ue;
	}

	public void setListe_ue(List<UE> liste_ue) {
		this.liste_ue = liste_ue;
	}
	
}
