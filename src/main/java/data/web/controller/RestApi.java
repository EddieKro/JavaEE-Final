package data.web.controller;

import data.Dao.StatusDao;
import data.Dao.UserDao;
import data.Entity.ModelResult;
import data.Entity.StatusEntity;
import data.Entity.UserEntity;
import model.ModelCallerTread;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.File;
import java.sql.Date;

@RestController
public class RestApi {

    @Autowired
    UserDao ud;

    @Autowired
    StatusDao sd;

    @RequestMapping(value = "/modelbase/params/{f1}/{f2}/{f3}/{f4}/{f5}/{f6}/{f7}/{f8}/{f9}")
    public ModelResult base(@PathVariable String f1,@PathVariable String f2,@PathVariable String f3,@PathVariable String f4,@PathVariable String f5,@PathVariable String f6,@PathVariable String f7,@PathVariable String f8,@PathVariable String f9){
        String[] features = new String[9];
        features[0]=f1;
        features[1]=f2;
        features[2]=f3;
        features[3]=f4;
        features[4]=f5;
        features[5]=f6;
        features[6]=f7;
        features[7]=f8;
        features[8]=f9;
        ModelCallerTread model = new ModelCallerTread(features,new File("/home/tomato/IdeaProjects/JavaEE-Final2/pythonStuff/basic_predict.py"));
        Thread rm = new Thread(model);
        rm.run();
        ModelResult res = new ModelResult();
        res.setResult(model.getResult().get(0));
        return res;
    }
    @RequestMapping(value = "/modeladv/params/{f1}/{f2}/{f3}/{f4}/{f5}/{f6}/{f7}/{f8}/{f9}/{f10}/{f11}/{f12}/{f13}/{f14}/{f15}/{f16}/{f17}/{f18}/{f19}/{f20}/{f22}/{f23}")
    public ModelResult adv(@PathVariable String f1,@PathVariable String f2,@PathVariable String f3,@PathVariable String f4,@PathVariable String f5,@PathVariable String f6,@PathVariable String f7,@PathVariable String f8,@PathVariable String f9,
                           @PathVariable String f10,
                           @PathVariable String f11,@PathVariable String f12,@PathVariable String f13,@PathVariable String f14,@PathVariable String f15,@PathVariable String f16,@PathVariable String f17,@PathVariable String f18,@PathVariable String f19,@PathVariable String f20,@PathVariable String f21,@PathVariable String f22,@PathVariable String f23){
        String[] features = new String[23];
        features[0]=f1;
        features[1]=f2;
        features[2]=f3;
        features[3]=f4;
        features[4]=f5;
        features[5]=f6;
        features[6]=f7;
        features[7]=f8;
        features[8]=f9;
        features[9]=f10;
        features[10]=f11;
        features[11]=f12;
        features[12]=f13;
        features[13]=f14;
        features[14]=f15;
        features[15]=f16;
        features[16]=f17;
        features[17]=f18;
        features[18]=f19;
        features[19]=f20;
        features[20]=f21;
        features[21]=f22;
        features[22]=f23;
        ModelCallerTread model = new ModelCallerTread(features,new File("/home/tomato/IdeaProjects/JavaEE-Final2/pythonStuff/advanced_predict.py"));
        Thread rm = new Thread(model);
        rm.run();
        ModelResult res = new ModelResult();
        res.setResult(model.getResult().get(0));
        return res;
    }

    @RequestMapping(value = "/re/{log}/{pass}/{status}")
    public UserEntity reu(@PathVariable String log,@PathVariable String pass,@PathVariable Integer status){
        UserEntity ue = new UserEntity();
        ue.setStatus(sd.getStatusById(status));
        ue.setLogin(log);
        ue.setPassword(pass);
        ue.setDate(new Date(System.currentTimeMillis()));
        return ud.save(ue);
    }
}
