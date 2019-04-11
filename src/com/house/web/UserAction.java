package com.house.web;

import java.io.IOException;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.house.domain.User;
import com.house.service.LoginService;
import com.house.service.RegisterService;

/**
 * Title: UserAction Description:ÕËºÅµÄ¿ØÖÆÆ÷
 * 
 * @author zhoujiahai
 * @date ÏÂÎç3:39:41
 */
@Controller("userAction")
@RequestMapping("/user")
public class UserAction {

	@Autowired
	private LoginService LoginService;
	@Autowired
	private User temp;
	@Autowired
	private RegisterService RegisterService;

	/**
	 * @Title: login @Description: µÇê‘ @return String @throws
	 */
	@RequestMapping("/login")
	public String login(User user, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		// response.sendRedirect(request.getContextPath()+"/index.jsp");
		// request.getRequestDispatcher("/index.jsp").forward(request, response);
		temp = LoginService.findUser(user);

		if ("admin".equals(user.getUsername()) && temp != null) {
			request.getSession().setAttribute("admin", temp);
			request.getSession().setAttribute("user", temp);
			return "redirect:/index.jsp";
		} else if (temp != null) {
			request.getSession().setAttribute("user", temp);
			return "redirect:/index.jsp";
		} else {
			request.setAttribute("msg", "ÕËºÅÃÜÂë´íÎó");
			return "login";
		}

	}

	/*
	 * @Title: register
	 * 
	 * @Description: ×¢²áÊµÏÖ
	 */
	@RequestMapping("/register")
	public String register(User user, HttpServletRequest request, HttpServletResponse response) {
		boolean t = false;
		t = RegisterService.findusername(user);
		if (t == true) {
			request.setAttribute("msg", "ÕËºÅÃÜÂëÒÑ´æÔÚ");
			return "register";
		} else {
			RegisterService.saveUser(user);
			return "redirect:/login.jsp";
		}

	}

	/*
	 * µÇ³ö
	 */
	@RequestMapping("/loginout")
	public String register(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().removeAttribute("user");
		request.getSession().removeAttribute("admin");
		return "redirect:/login.jsp";
	}

}
