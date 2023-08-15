package com.poly.lab.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.poly.lab.Entity.Category;


public interface CategoryDAO extends JpaRepository<Category,String>{
}
