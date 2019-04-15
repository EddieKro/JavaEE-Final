package data.Dao;

import data.Entity.TransactionEntity;
import data.repository.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

@Service
public class TransactionDao {
    @Autowired
    TransactionRepository trep;

    public TransactionEntity getTransactionById(Integer id){
        return trep.findOne(id);
    }

}
