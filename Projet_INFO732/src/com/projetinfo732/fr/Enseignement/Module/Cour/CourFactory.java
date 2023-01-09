package com.projetinfo732.fr.Enseignement.Module.Cour;

import java.util.Date;

import com.projetinfo732.fr.Enseignement.Module.Module;

public interface CourFactory {
	
	Cour createCour(CourEnum cour_enum, int num_seance, Date date, int heure_debut, double duree, Module module);

}
