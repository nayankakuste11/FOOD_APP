package com.ty.jsp_application_eb8_prc.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.ty.jsp_application_eb8_prc.dto.User;

public class UserDao {

	public EntityManager getEntityManager() {
		return Persistence.createEntityManagerFactory("vinod").createEntityManager();
	}

	public Object saveUser(User user) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();
		
		User user2 = getUserByEmail(user.getEmail());
		User user3 = getUserByPhone(user.getPhone());
		if(user2==null && user3==null) {
		entityTransaction.begin();
		entityManager.merge(user);
		entityTransaction.commit();
		return user;
		}else if(user3==null && user2!=null) {
			return null; 
		}else {
			return 0 ;
		}
	}

	public User getUserByEmail(String email) {

		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery("SELECT u FROM User u WHERE u.email=?1");
		query.setParameter(1, email);

		try {
			return (User) query.getSingleResult();

		} catch (Exception e) {
			return null;
		}

	}
	
	public User getUserByPhone(long phone) {

		EntityManager entityManager = getEntityManager();
		Query query = entityManager.createQuery("SELECT u FROM User u WHERE u.phone=?1");
		query.setParameter(1, phone);

		try {
			return (User) query.getSingleResult();

		} catch (Exception e) {
			return null;
		}

	}

	public User updateUser(User user) {
		EntityManager entityManager = getEntityManager();
		EntityTransaction entityTransaction = entityManager.getTransaction();

		entityTransaction.begin();
		entityManager.merge(user);
		entityTransaction.commit();

		return user;
	}

	public User getUserById(int id) {
		EntityManager entityManager = getEntityManager();
		User user = entityManager.find(User.class, id);
		return user;
	}

}
