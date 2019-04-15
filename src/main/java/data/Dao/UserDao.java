package data.Dao;

import data.Entity.UserEntity;
import data.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

@Service
public class UserDao {
    @Autowired
    private UserRepository urep;

    public UserEntity findById(Integer id){
        return urep.findOne(id);
    }

    public UserEntity findByLogin(String login){
        return urep.findByLogin(login);
    }

    public UserEntity save(UserEntity uent){
        urep.saveAndFlush(uent);
        return uent;
    }
}
