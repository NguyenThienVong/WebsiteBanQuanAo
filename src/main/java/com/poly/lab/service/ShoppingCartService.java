package com.poly.lab.service;

import java.util.Collection;

import com.poly.lab.Entity.CartItem;

public interface ShoppingCartService {

	CartItem add(Integer id);

	CartItem sub(Integer id);

	void remove(Integer id);

	CartItem update(Integer id, int qty);

	void clear();

	Collection<CartItem> getItems();

	int getCount();

	double getAmount();

	double getTotal();
}
