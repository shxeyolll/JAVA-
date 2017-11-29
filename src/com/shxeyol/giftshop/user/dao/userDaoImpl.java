package com.shxeyol.giftshop.user.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shxeyol.giftshop.entity.User;

@Repository
public class userDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	@Transactional
	public User findById(int id){
		System.out.println("ddddddddddfbi");
		User u = (User)this.sessionFactory.openSession().
				createQuery("from User where userid = ?").setParameter(0, id).uniqueResult();
		return u;
	}
	@Transactional
	public User findByEmail(String email){
		System.out.println("dddddddddddfbn");
		User u = (User)this.sessionFactory.openSession().
				createQuery("from User where email = ?").setParameter(0, email).uniqueResult();
		return u;
	}
	
	@Transactional
	public int addUser(User u){
		System.out.println("dddddddddau");
	
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(u);
		tx.commit();
		return 1;
	}
}
