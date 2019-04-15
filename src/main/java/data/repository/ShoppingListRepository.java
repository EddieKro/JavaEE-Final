package data.repository;

import data.Entity.ShoppingListEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ShoppingListRepository extends JpaRepository<ShoppingListEntity,Integer> {}
