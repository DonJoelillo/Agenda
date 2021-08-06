package cl.Inacap.Agenda.DAO;

import java.util.ArrayList;
import java.util.List;

import cl.Inacap.Agenda.DTO.Persona;

public class PersonaDAO {

	private static List<Persona> arrPersonas= new ArrayList<Persona>();

	//CRUD
	
	// crear
	public void addPersona(Persona p) {     
		arrPersonas.add(p);
	}
	
	//read
	public List<Persona> getAllPersonas(){     
		return arrPersonas;
	}
	
	//delete
	public void deletePersona(int id) {     
		arrPersonas.remove(id);
	}
	//read id
	public Persona getPersonabyIden(int id) {     
		return arrPersonas.get(id);
	}
	
	//update
	public void updatePersona(Persona p,int id) {
		arrPersonas.set(id,p);
	}
	
	
}
