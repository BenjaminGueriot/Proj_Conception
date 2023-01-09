package com.projetinfo732.fr.Enseignement.Module.Cour;

import java.util.Date;

import com.projetinfo732.fr.Enseignement.Module.Module;

public class TP extends Cour {

	public TP(int num_seance, Date date, int heure_debut, double duree, Module module, CourEnum courenum) {
		super(num_seance, date, heure_debut, duree, module, courenum);
	}

}
