package com.coffee.shop.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.coffee.shop.member.Items;

@Repository
@Transactional
public class ItemDao {
	@PersistenceContext
	EntityManager eManager;
	
	
	
	public List<Items> displayAll(){
		TypedQuery<Items> namedQuery = eManager.createNamedQuery("find_all_items", Items.class);
		return namedQuery.getResultList();
	}
	
	
	public Items findByName(String name) {
		return eManager.find(Items.class, name);	
	}
	
	//update or add
	public Items addOrUpdateItem(Items item) {
		
		return eManager.merge(item);
	}
	
	public Items findById(Integer id) {
	
		return eManager.find(Items.class, id);
	} 
	
	public void deleteById(Integer id) {
		eManager.remove(findById(id));
	}

}
