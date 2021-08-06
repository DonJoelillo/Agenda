package cl.Inacap.Agenda.DTO;

public class Persona {
	
	//Constructor//
	
		private String nombre;
		private String rut;
		private String email;
		private String fechaNacimiento;
		private String direccion;
		private String passWordUser;
		private String passWordValidate;
		
		//Metodos//
		
		public Persona(String nombre, String rut, String email, String direccion, String fechaNacimiento, String passWordUser, String passWordValidate) {
			super();
			this.nombre = nombre;
			this.rut = rut;
			this.email = email;
			this.fechaNacimiento = fechaNacimiento;
			this.direccion = direccion;
			this.passWordUser = passWordUser;
			this.passWordValidate = passWordValidate;
		}
		
		
		public Persona() {
			
		}
		
		
		
		public String getNombre() {
			return nombre;
		}
		
		public void setNombre(String nombre) {
			this.nombre = nombre;
		}
		public String getRut() {
			return rut;
		}
		public void setRut(String rut) {
			this.rut = rut;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getDireccion() {
			return direccion;
		}
		public void setDireccion(String direccion) {
			this.direccion = direccion;
		}


		public String getFechaNacimiento() {
			return fechaNacimiento;
		}


		public void setFechaNacimiento(String fechaNacimiento) {
			this.fechaNacimiento = fechaNacimiento;
		}


		public String getPassWordUser() {
			return passWordUser;
		}


		public void setPassWordUser(String passWordUser) {
			this.passWordUser = passWordUser;
		}


		public String getPassWordValidate() {
			return passWordValidate;
		}


		public void setPassWordValidate(String passWordValidate) {
			this.passWordValidate = passWordValidate;
		}

		
}
