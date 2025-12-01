package com.hibernate_Configuration;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class hibernate_Configuration {
	
	public static SessionFactory factory;

	public static SessionFactory openFactory() throws Exception
	{
		if (factory ==null) {
			
			factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			
		}
				
		return factory;
		
	}
	
	public void closefactory() throws Exception
	{
		if (factory.isOpen()) {
			factory.close();
		}
	}

}
