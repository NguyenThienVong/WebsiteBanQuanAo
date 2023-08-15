package com.poly.lab.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.lab.DAO.OrderDAO;
import com.poly.lab.DAO.OrderDetailDAO;
import com.poly.lab.Entity.Account;
import com.poly.lab.Entity.CartItem;
import com.poly.lab.Entity.Order;
import com.poly.lab.Entity.OrderDetail;
import com.poly.lab.Entity.Product;


@Service
public class CheckOutService {

	
	@Autowired
	ShoppingCartService shoppingCartService;
	
	@Autowired
	OrderDAO orderDAO;
	
	@Autowired
	OrderDetailDAO orderDetailDAO;
	
	public Order order (Account user, String address) {
		Order order = new Order();
		order.setAccount(user);
		order.setAddress(address);
		orderDAO.save(order);
		for(CartItem item:shoppingCartService.getItems()) {
			OrderDetail orderDetail = new OrderDetail();
			orderDetail.setOrder(order);
			orderDetail.setPrice(item.getPrice());
			orderDetail.setQuantity(item.getQty());
			
			Product product = new Product();
			product.setId(item.getId());
			product.setName(item.getName());
			orderDetail.setProduct(product);
			orderDetailDAO.save(orderDetail);
		}
		shoppingCartService.clear();
		return order;
	}
}
