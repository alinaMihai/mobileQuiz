package services;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import utility.SessionFactoryUtil;
import entities.EntityClass;

public class EntityService {
	public int createEntity(EntityClass entity) {

		Session session = SessionFactoryUtil.getSessionFactory()
				.getCurrentSession();
		session.beginTransaction();
		session.persist(entity);
		session.getTransaction().commit();
		return entity.getId();
	}

	public List<EntityClass> getEntityList(String entity) {
		Session session = SessionFactoryUtil.getSessionFactory()
				.getCurrentSession();
		session.beginTransaction();
		
		Query query = session.createQuery("from "+entity);
		List<EntityClass> list = query.list();
		java.util.Iterator<EntityClass> iter = list.iterator();
		while (iter.hasNext()) {
			list.add(iter.next());

		}
		session.getTransaction().commit();
		return list;
	}

	public EntityClass getEntityById(int id,Class theClass) {
		Session session = SessionFactoryUtil.getSessionFactory()
				.getCurrentSession();
		session.beginTransaction();
		EntityClass entity = (EntityClass) session.get(theClass, id);

		session.getTransaction().commit();


		return entity;
	}

	public void updateEntity(EntityClass entity) {
		Session session = SessionFactoryUtil.getSessionFactory()
				.getCurrentSession();
		session.beginTransaction();
		session.saveOrUpdate(entity);
		session.getTransaction().commit();

	}

	public void deleteEntity(EntityClass entity) {
		Session session = SessionFactoryUtil.getSessionFactory()
				.getCurrentSession();
		session.beginTransaction();
		session.delete(entity);
		session.getTransaction().commit();

	}
}
