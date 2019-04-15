package data.repository;

import data.Entity.TransactionEntity;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


public interface TransactionRepository extends JpaRepository<TransactionEntity,Integer> {
}
