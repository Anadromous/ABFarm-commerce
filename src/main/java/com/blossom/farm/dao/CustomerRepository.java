package com.blossom.farm.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.blossom.farm.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
