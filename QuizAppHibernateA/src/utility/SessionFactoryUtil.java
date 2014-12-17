package utility;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class SessionFactoryUtil {

	private static ServiceRegistry serviceRegistry;
	private static SessionFactory sessionFactory;

	static {
		sessionFactory = createSessionFactory();
	}

	public static SessionFactory getSessionFactory() {

		return sessionFactory;
	}

	public static SessionFactory createSessionFactory() {
		try {
			Configuration configuration = new AnnotationConfiguration();

			sessionFactory = configuration.configure().buildSessionFactory();
			return sessionFactory;
		} catch (Throwable ex) {
			// Make sure you log the exception, as it might be swallowed
			System.err.println("Initial SessionFactory creation failed." + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}
	
	public static void closeSession(Session session){
		if(session!=null){
			session.flush();
			session.close();
		}
	}
}
