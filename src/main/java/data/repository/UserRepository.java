package data.repository;

import data.Entity.StatusEntity;
import data.Entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.sql.Date;
import java.util.List;


public interface UserRepository extends JpaRepository<UserEntity,Integer> {
    UserEntity findByLogin(String login);
    List<UserEntity> findAllByStatus(StatusEntity status);
    List<UserEntity> findAllByDate(Date date);
}
