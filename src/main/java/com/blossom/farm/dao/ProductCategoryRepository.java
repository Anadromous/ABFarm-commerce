package com.blossom.farm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.blossom.farm.model.ProductCategory;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long> {
	
/*	@Query("SELECT cat FROM Category cat  WHERE cat.phoneType=(:pType) AND con.lastName= (:lName)")
    List<ProductCategory> findByLastNameAndPhoneType(@Param("pType") PhoneType pType, @Param("lName") String lName);
}*/

}
