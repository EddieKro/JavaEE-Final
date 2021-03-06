package data.web.controller;

import data.Dao.StatusDao;
import data.Dao.UserDao;
import data.Entity.StatusEntity;
import data.Entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;

@Controller
public class MainController {

    @Autowired
    UserDao ud;
    @Autowired
    StatusDao sd;

    @RequestMapping(value = {"/", "/index**", "/index"}, method = RequestMethod.GET)
    public ModelAndView defaultPage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("index");
        return model;
    }

    @RequestMapping(value = {"/welcome"}, method = RequestMethod.GET)
    public ModelAndView oldDefaultPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Security Login Form - Database Authentication");
        model.addObject("message", "This is default page!");
        model.setViewName("hello");
        return model;

    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
                              @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("login");

        return model;

    }

    //for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accessDenied() {

        ModelAndView model = new ModelAndView();

        //check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            model.addObject("username", userDetail.getUsername());
        }

        model.setViewName("403");
        return model;

    }

    @RequestMapping(value = "/test1", method = RequestMethod.GET)
    public ModelAndView test4user() {
        ModelAndView model = new ModelAndView();

        model.addObject("text1", "some user text");

        return model;
    }


    @RequestMapping(value = "/test2", method = RequestMethod.GET)
    public ModelAndView test4admin() {
        ModelAndView model = new ModelAndView();

        model.addObject("text2", "some admin text");

        return model;
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public ModelAndView aboutPage() {
        return new ModelAndView();

    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public ModelAndView contactPage() {
        return new ModelAndView();

    }

    @RequestMapping(value = "/basic", method = RequestMethod.GET)
    public ModelAndView basicmodelPage() {
        return new ModelAndView();
    }

    @RequestMapping(value = "/advanced", method = RequestMethod.GET)
    public ModelAndView advancedmodelPage() {
        return new ModelAndView();
    }

    @RequestMapping(value = "/demo", method = RequestMethod.GET)
    public ModelAndView demoPage() {
        return new ModelAndView();
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView registrationPage() {
        return new ModelAndView();
    }

    private StatusEntity getStatus(Integer id) {
        return sd.getStatusById(id);
    }

    private void registerUser(String login, String pass, StatusEntity se) {
        UserEntity ue = new UserEntity();
        ue.setLogin(login);
        ue.setPassword(pass);
        ue.setDate(new Date(System.currentTimeMillis()));
        ue.setStatus(se);
        ud.save(ue);
    }
}