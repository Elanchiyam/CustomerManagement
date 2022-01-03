package com.vasyerp.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vasyerp.springboot.entity.Customer;
import com.vasyerp.springboot.services.CustomerService;

@Controller
@RequestMapping(value="/customer")
public class CustomerController {
	@Autowired
	CustomerService customerService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("customer_list");
		List<Customer> customerList = customerService.getAllCustomers();
		model.addObject("customerList", customerList);
		
	
		return model;
	 }

	
	 @RequestMapping(value="/addCustomer/", method=RequestMethod.GET)
	 public ModelAndView addStudent() {
		 
	  ModelAndView model = new ModelAndView();
	  Customer customer = new Customer();
	  model.addObject("customerForm", customer);
	  model.setViewName("customer_form");
	  
	  return model;
	 }
	 
	 
	 
	 @RequestMapping(value="/editCustomer/{id}", method=RequestMethod.GET)
	 public ModelAndView editStudent(@PathVariable int id) {
	  ModelAndView model = new ModelAndView();
	  
	  Customer customer = customerService.getCustomerById(id);
	  model.addObject("customerForm", customer);
	  model.setViewName("customer_form");
	  
	  return model;
	 }
	 
	 
	 @RequestMapping(value="/addCustomer", method=RequestMethod.POST)
	 public ModelAndView add(@ModelAttribute("customerForm") Customer customer) {
		 
		 customerService.addCustomer(customer);
	  return new ModelAndView("redirect:/customer/list");
	  
	 }
	 
	 @RequestMapping(value="/deleteCustomer/{id}", method=RequestMethod.GET)
	 public ModelAndView delete(@PathVariable("id") int id) {
		 
	  customerService.deleteCustomer(id);
	  return new ModelAndView("redirect:/customer/list");
	  
	 }
}
