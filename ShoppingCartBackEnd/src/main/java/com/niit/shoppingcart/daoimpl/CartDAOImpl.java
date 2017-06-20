package com.niit.shoppingcart.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.domain.Cart;

@Repository("cartDAO")
@Transactional
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public CartDAOImpl() {

	}

	public CartDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Cart> list(String id) {

		String hql = "from Cart where id=" + "'" + id + "'  and status = " + "'N'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return query.list();

	}

	@Transactional
	public boolean save(Cart cart) {
		try
		{
			sessionFactory.getCurrentSession().save(cart);
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
		return true;

	}

	@Transactional
	public Cart getCart(String id, String productname) {
		String hql = "from Cart where id = ? and productname = ?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		query.setString(1, productname);
		return (Cart) query.uniqueResult();

	}

	@Transactional
	public Integer getQuantity(String id, String productname) {
		String hql = "select quntity from  Cart where id = ?  &&  productName =?";

		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setString(0, id);
		query.setString(1, productname);

		return (Integer) query.uniqueResult();
	}

	@Transactional
	public Long getTotalAmount(String id) {

		String hql = "select sum(price*quantity) from  Cart where email=" + "'" + id + "' " + "  and status = " + "'N'";

		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		return (Long) query.uniqueResult();

	}

	@Transactional
	public boolean update(Cart cart) {
		try
		{
			sessionFactory.getCurrentSession().update(cart);
		}catch (Exception e){
			e.printStackTrace();
			return false;
		}
		return true;

	}

	@Transactional
	@SuppressWarnings("unchecked")
	public List<Cart> list() {
		return sessionFactory.getCurrentSession().createQuery("from Cart").list();
	}

	@Transactional
	public Cart get(String id) {

		return (Cart) sessionFactory.getCurrentSession().get(Cart.class, id);
	}

	/*
	 * public boolean delete(Cart cart) { //Cart.setStatus('X');
	 * 
	 * return update(cart); }
	 */
	@Transactional
	public List<Cart> list(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public Cart get(int cartId) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * public void saveOrUpdate(Cart cart) {
	 * 
	 * sessionFactory.getCurrentSession().saveOrUpdate(cart);
	 * 
	 * }
	 */

	@Transactional
	public void delete(int cartId) {

		Cart cartToDelete = new Cart();
		cartToDelete.setCartId(cartId);
		sessionFactory.getCurrentSession().delete(cartToDelete);
	}

	@Transactional
	public Long getTotalAmount(int id) {
		String hql = "select sum(total) from Cart where id = " + "'" + id + "'" + "and status = '" + "N" + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		Long sum = (Long) query.uniqueResult();
		return sum;
	}

	@Transactional
	public Cart getByCartId(int cartId) {

		String hql = "from Cart where cartId ='" + cartId + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) (query).list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		return null;
	}

	public Cart getByProductId(int productid) {
		String hql = "from Cart where productid ='" + productid + "'";
		Query query = (Query) sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) (query).list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		return null;
	}

	@Transactional
	public List<Cart> getByEmailId(String email) {
		String hql = "from Cart where email ='" + email + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();

		return list;        
	}

	@Transactional
	public Cart getByProductName(String productname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public boolean itemAlreadyExist(String email, String productid, boolean b) {
		String hql = "from Cart where email= '" + email + "' and " + " productid ='" + productid + "'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = (List<Cart>) query.list();
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

	@Transactional
	public Cart getByUserandProduct(String email, String productid) {
		String hql = "from Cart where email= '" + email + "' and " + " productid ='" + productid + "'";
		org.hibernate.Query query = sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> listCart = (List<Cart>) query.list();

		if (listCart != null && !listCart.isEmpty()) {
			return listCart.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Transactional
	public List<Cart> listCartByStatus(String userID, String status) {
	
		return sessionFactory.getCurrentSession()
				.createQuery("from Cart where email=" + "'" + userID + "'" + "and status=" + "'" + status+"'")
				.list();
	}

}