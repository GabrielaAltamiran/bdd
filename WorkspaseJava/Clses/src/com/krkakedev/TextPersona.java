package com.krkakedev;
public class TextPersona {

	public static void main(String[] args) {
		// Esto es un comenatario 
		//Crear una variable 
		//int a;
		//string b;
		Persona p;//Paso 1 declaro una variable llamada "p" de tipo persona
		Persona p2=new Persona();
	
		p=new Persona();//Instanciando el objeto persona, refenrecnciado con p
		System.out.println("nombre: "+p.nombre);//Para codificar arpido el codigo sysour + crlt+espacio
		System.out.println("edad: "+p.edad);
		System.out.println("estatura: "+p.estatura);
		
		p.nombre="Gaby";
		p.edad=17;
		p.estatura=1.13;
		System.out.println("*********");
		System.out.println("p.nombre: "+p.nombre);
		System.out.println("p.edad: "+p.edad);
		System.out.println("p.estatura: "+p.estatura);
		
		p2.nombre="Angelina";
		p2.edad=22;
		p2.estatura=1.50;
		System.out.println("*********");
		System.out.println("p.nombre: "+p2.nombre);
		System.out.println("p.edad: "+p2.edad);
		System.out.println("p.estatura: "+p2.estatura);
		
		//Modificar atributos 
		p.nombre = "Kevin";
		p.edad = 18;
		p.estatura =1.50;
		
		System.out.println("*****************");
		//Aceso a los atributos 
		System.out.println("*********");
		System.out.println("p.nombre: "+p.nombre);
		System.out.println("p.edad: "+p.edad);
		System.out.println("p.estatura: "+p.estatura);
		
		
		
	}

}
