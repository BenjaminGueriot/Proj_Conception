package com.projetinfo732.fr.Enseignement;

import java.util.ArrayList;
import java.util.List;

import com.projetinfo732.fr.Enseignement.Module.Module;

public class UE {

	private String nom;
	private List<Module> modules = new ArrayList<>();
	
	public UE(String nom) {
		super();
		this.nom = nom;
	}
	
	public void addModule(Module... modules) {
		for(Module module : modules) {
			this.modules.add(module);
		}
	}
	

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public List<Module> getModules() {
		return this.modules;
	}

	public void setModules(List<Module> modules) {
		this.modules = modules;
	}

	
	
}
