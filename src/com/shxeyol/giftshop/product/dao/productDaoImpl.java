package com.shxeyol.giftshop.product.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shxeyol.giftshop.entity.Product;

@Repository
public class productDaoImpl{

	@Resource
	private SessionFactory sessionFactory;
	
	@Transactional
	public List<Product>findAll(){
		List<Product> list = new ArrayList<>();
		Query query = this.sessionFactory.openSession().createQuery("from Product");
		list = (List<Product>)query.list();
		
		return list; 
	}
	
	@Transactional
	public Product findById(Integer id) {	
		Product p = (Product)this.sessionFactory.openSession().createQuery("from Product where id = ?").setParameter(0, id).uniqueResult();
		return p;
	}
	
	@Transactional 
	public List<Product> findPage(int pageNum,int pageSize){
		Query query = this.sessionFactory.openSession().createQuery("from Product");
		query.setFirstResult((pageNum-1)*pageSize);
		query.setMaxResults(pageSize);
		List<Product> list = query.list();
		return list;
	}
	
	
	
}
