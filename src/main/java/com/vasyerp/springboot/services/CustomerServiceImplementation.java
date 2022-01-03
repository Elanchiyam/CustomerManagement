package com.vasyerp.springboot.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vasyerp.springboot.entity.Customer;
import com.vasyerp.springboot.repository.CustomerRepository;

@Service
@Transactional
public class CustomerServiceImplementation implements CustomerService{

	@Autowired
	CustomerRepository customerRepository;
	
	@Override
	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		return (List<Customer>) customerRepository.findAll();
	}

	@Override
	public Customer getCustomerById(int id) {
		return customerRepository.findById(id).get();
	}
	
	@Override
	public void addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerRepository.save(customer);
	}
	@Override
	public void deleteCustomer(int id) {
		customerRepository.deleteById(id);
	}
	
	
}
