package com.cetpa.repositories;

import java.util.List;
import org.hibernate.*;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.cetpa.models.Product;


@Repository
public class ProductRepository 
{
	private Session session;
	private Transaction transaction;
	
	public ProductRepository() {}
	
	@Autowired
	public ProductRepository(SessionFactory sessionFactory)
	{
		session=sessionFactory.openSession();
		transaction=session.getTransaction();
	}
	public void saveProduct(Product product) 
	{
		transaction.begin();
		session.save(product);
		transaction.commit();
	}

	public List<Product> getProductList() 
	{
		Query<Product> query=session.createQuery("from Product",Product.class);
		return query.list();
	}
	public Product getProductRecord(int pid) 
	{
		return session.get(Product.class,pid);
	}

	public void deleteRecord(Product product) 
	{
		transaction.begin();
		session.delete(product);
		transaction.commit();
	}
	public void updateRecord(Product producto, Product productn) 
	{
		transaction.begin();
		producto.setName(productn.getName());
		producto.setBrand(productn.getBrand());
		producto.setPrice(productn.getPrice());
		transaction.commit();
	}
}
