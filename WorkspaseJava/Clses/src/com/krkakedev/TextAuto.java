package com.krkakedev;

public class TextAuto {

	public static void main(String[] args) {
		
		Auto auto1;
		Auto auto2;
		 auto1=new Auto();
		 auto2=new Auto();
		 System.out.println("*********************");
		 auto1.marca ="KIA";
		 auto1.anio =2018;
		 auto1.precio =1.2500;
		 System.out.println("auto.marca: "+auto1.marca);
		 System.out.println("auto.anio: "+auto1.anio);
		 System.out.println("auto.: "+auto1.precio);
		 
		 System.out.println("*********************");
		 
		 auto2.marca ="MERCDEZ BENZ";
		 auto2.anio =2000;
		 auto2.precio =1000.50; 
		 System.out.println("auto.marca: "+auto2.marca);
		 System.out.println("auto.anio: "+auto2.anio);
		 System.out.println("auto.: "+auto2.precio);
	}

}
