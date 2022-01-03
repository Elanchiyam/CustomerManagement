package com.vasyerp.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import com.vasyerp.springboot.entity.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer>{

}
