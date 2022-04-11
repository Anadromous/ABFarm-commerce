package com.blossom.farm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.blossom.farm.model.ProduceCategory;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "produceCategory", path = "produce-category")
public interface ProduceCategoryRepository extends JpaRepository<ProduceCategory, Long> {

}
