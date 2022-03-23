package com.blossom.farm.config;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.metamodel.EntityType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;
import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.config.annotation.CorsRegistry;

import com.blossom.farm.model.Country;
import com.blossom.farm.model.Product;
import com.blossom.farm.model.ProductCategory;
import com.blossom.farm.model.State;

@Configuration
public class DataRestConfig implements RepositoryRestConfigurer{
	
	private EntityManager entityManager;
	
	@Autowired
	public DataRestConfig(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	@Override
	public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config, CorsRegistry cors) {

		HttpMethod [] unsupportedActions = {HttpMethod.PUT, HttpMethod.DELETE, HttpMethod.POST};
		
		disableHttpMethods(ProductCategory.class, config, unsupportedActions);
		disableHttpMethods(Product.class, config, unsupportedActions);
		disableHttpMethods(Country.class, config, unsupportedActions);
		disableHttpMethods(State.class, config, unsupportedActions);
		
		//call helper method: exposeIds
		exposeIds(config);
	}

	private void disableHttpMethods(Class classToDisable, RepositoryRestConfiguration config, HttpMethod[] unsupportedActions) {
		config.getExposureConfiguration()
		.forDomainType(classToDisable)	
		.withItemExposure((metdata, httpMethods) -> httpMethods.disable(unsupportedActions))
		.withCollectionExposure((metdata, httpMethods) -> httpMethods.disable(unsupportedActions));
	}
	
	private void exposeIds(RepositoryRestConfiguration config) {
		
		//expose entity Ids
		// get list of classes from the Entity manager
		Set<EntityType<?>> entities = entityManager.getMetamodel().getEntities();
		
		//create an array of the entity types
		List<Class> entityClasses = new ArrayList();
		
		//get the entity types for the entities
		for(EntityType tempEntityType : entities) {
			entityClasses.add(tempEntityType.getJavaType());
		}
		
		//expose the entity ids for the array of entity/domain types
		Class[] domainTypes = entityClasses.toArray(new Class[0]);
		config.exposeIdsFor(domainTypes);
	}
	
}
