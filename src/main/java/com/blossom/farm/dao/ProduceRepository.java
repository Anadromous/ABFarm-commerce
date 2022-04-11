package com.blossom.farm.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;

import com.blossom.farm.model.Produce;

@CrossOrigin("http://localhost:4200")
public interface ProduceRepository extends JpaRepository<Produce, Long> {
	
	Page<Produce> findByCategoryId(@RequestParam("id") Long id, Pageable pageable);

}
