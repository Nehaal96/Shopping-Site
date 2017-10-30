package com.niit.gadgets.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.niit.gadgets.dao.UserDAO;
import com.niit.gadgets.model.User;

@Controller
public class UserController {

	@Autowired
	UserDAO userDao;
	
	public void UserDAO(UserDAO userDao)
	{
		this.userDao=userDao;
	}
	
	@RequestMapping(value="/registration")
	public ModelAndView reg(@Valid @ModelAttribute("user1")User user , BindingResult result)
	{
        if(result.hasErrors())
        {
        	ModelAndView mv = new ModelAndView("registration");
        	return mv;
        }
		
		ModelAndView mv = new ModelAndView("registration");
		
		return mv;
	}
	@RequestMapping(value="/cvideo")
	public String video()
	{
		return "videopage";
	}
}