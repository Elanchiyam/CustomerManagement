package com.vasyerp.springboot.services;

import java.util.List;

import com.vasyerp.springboot.entity.Customer;

public interface CustomerService {
	 public List<Customer> getAllCustomers();
	 public Customer getCustomerById(int id);
	 public void addCustomer(Customer customer);
	 public void deleteCustomer(int id);


}
