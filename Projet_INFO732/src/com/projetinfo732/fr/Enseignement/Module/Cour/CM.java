package com.projetinfo732.fr.Enseignement.Module.Cour;

import java.util.Date;

import com.projetinfo732.fr.Enseignement.Module.Module;

public class CM extends Cour {

	public CM(int num_seance, Date date, double heure_debut, double duree, Module module, CourEnum courenum) {
		super(num_seance, date, heure_debut, duree, module, courenum);
	}

}
