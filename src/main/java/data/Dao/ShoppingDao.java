package data.Dao;

import data.Entity.ShoppingListEntity;
import data.repository.ShoppingListRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShoppingDao {

    @Autowired
    ShoppingListRepository shrep;

    public List<ShoppingListEntity> getAll(){
        return shrep.findAll();
    }
}
