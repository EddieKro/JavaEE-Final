package data.web.controller;

import data.Dao.UserDao;
import data.Entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistrationController {
    @Autowired
    public UserDao userDao;


    @RequestMapping(value = {"/reg"}, method = RequestMethod.GET)
    public ModelAndView register() {
        ModelAndView model = new ModelAndView("registration");
        model.addObject("user", new UserEntity());
        return model;
    }

    @RequestMapping(value = "/registrationProcess", method = RequestMethod.POST)
    public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
                                @ModelAttribute("user") UserEntity user) {
        userDao.save(user);
        return new ModelAndView("index", "text", user.getLogin());
    }
}
