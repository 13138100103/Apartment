package com.house.web;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.house.domain.House;
import com.house.domain.Message;
import com.house.domain.User;
import com.house.service.HouseService;
import com.house.service.MessageService;
import com.house.domain.Contact;

/*
 * 留言管理
 */
@Controller("messageAction")
@RequestMapping("/message")
public class MessageAction {

	@Autowired
	private MessageService MessageService;

	@Autowired
	private HouseService HouseService;

	/*
	 * 房屋回复
	 */
	@RequestMapping("/reply")
	public String HouseQueryALL(Message message, HttpServletRequest request, HttpServletResponse response) {
		if (request.getSession().getAttribute("user") == null) {
			return "redirect:/login.jsp";
		} else {
			User user = (User) request.getSession().getAttribute("user");
			if (user == null) {
				return "login";
			} else {
				Date date = new Date(System.currentTimeMillis());
				House house = (House) request.getSession().getAttribute("house1");
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String createtime = format.format(date);
				message.setTime(createtime);
				message.setHouseid(house);
				message.setUserid(user);
				MessageService.reply(message);
				house = HouseService.querySingle(house.getId());
				request.getSession().setAttribute("house1", house);
				return "redirect:/single.jsp";
			}
		}
	}

	/*
	 * 留言
	 */
	@RequestMapping("/contact")
	public String Contact(Contact contact, HttpServletRequest request, HttpServletResponse response) {
		if (request.getSession().getAttribute("admin") == null) {
			return "redirect:/login.jsp";
		} else {
			User user = (User) request.getSession().getAttribute("user");
			if (user == null) {
				return "login";
			} else {
				Date date = new Date(System.currentTimeMillis());
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				String createtime = format.format(date);
				contact.setUsername(user.getUsername());
				contact.setEmail(user.getEmail());
				contact.setTime(createtime);
				MessageService.Contact(contact);
				return "redirect:/contact.jsp";
			}
		}
	}

}
