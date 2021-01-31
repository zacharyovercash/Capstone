package com.hcl.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hcl.model.Order;
import com.hcl.model.Product;

@Repository
public interface OrderRepo extends CrudRepository<Order, Long>{

}
