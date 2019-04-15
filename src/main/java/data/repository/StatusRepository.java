package data.repository;


import data.Entity.StatusEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StatusRepository extends JpaRepository<StatusEntity,Integer> {
    StatusEntity findOneByStatus(String status);
}
