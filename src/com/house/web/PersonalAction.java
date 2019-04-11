package com.house.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.house.service.UpdateService;
import com.house.domain.Message;
import com.house.domain.User;


/*
 * 个人管理
 */
@Controller("personalAction")
@RequestMapping("/personal")
public class PersonalAction {

	
	@Autowired
	private UpdateService UpdateService;

	/*
	 * 修改个人信息
	 */
	@RequestMapping("/data")
	public String updateData(User user,HttpServletRequest request,HttpServletResponse response){
		if(request.getSession().getAttribute("user")==null){
			return"redirect:/login.jsp";
		}else{
		UpdateService.updateuser(user);
		request.getSession().setAttribute("user", user);
		return "redirect:/personal.jsp";
	}}
	/*
	 * 回复管理
	 */
	@RequestMapping("/message")
	public String MessageManage(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("user")==null){
			return"redirect:/login.jsp";
		}else{
		User user=(User) request.getSession().getAttribute("user");	
		List<Message> message=UpdateService.FindMessage(user);
		request.setAttribute("message", message);
		return "message";
		}
	}
	/*
	 * 回复删除
	 */
	@RequestMapping("/messagedelete")
	public String MessageDelete(Message message1,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("user")==null){
			return"redirect:/login.jsp";
		}else{
			UpdateService.DelteMessage(message1);
		User user=(User) request.getSession().getAttribute("user");
		List<Message> message=UpdateService.FindMessage(user);
		System.out.print(message);
		request.setAttribute("message", message);
		return "redirect:/success.jsp";
	}}
	
}
	

