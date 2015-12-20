package com.lrmz.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
	private static SessionFactory sf;
	private static ThreadLocal<Session> tl =
		new ThreadLocal<Session>();
	
	static {
		Configuration conf = new Configuration();
		conf.configure("/hibernate.cfg.xml");
		sf = conf.buildSessionFactory();
	}
	
	public static Session getSession() {
		//Session session = tl.get();
//		if(session == null) {
		Session session = sf.openSession();
//			tl.set(session);
//		}
		return session;
	}
	
	public static void closeSession() {
		Session session = tl.get();
		if(session != null) {
			session.close();
			tl.set(null);
		}
	}

}
