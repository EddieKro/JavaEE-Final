package data.Dao;

import data.Entity.StatusEntity;
import data.repository.StatusRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StatusDao {

    @Autowired
    private StatusRepository srep;

    public StatusEntity getStatusById(Integer id){
        return srep.findOne(id);
    }

    public List<StatusEntity> getAllStatus(){
        return srep.findAll();
    }

    public StatusEntity saveStatus(StatusEntity sent){
        srep.saveAndFlush(sent);
        return sent;
    }

    public StatusEntity getByStatus(String status){
        return srep.findOneByStatus(status);
    }
}
