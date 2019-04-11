package com.house.web;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.house.domain.Contact;
import com.house.domain.House;
import com.house.domain.Message;
import com.house.domain.User;
import com.house.service.ManageService;




/**
 * Title: UserAction
 * Description:账号的控制器
 * @author zhoujiahai
 * @date 下午3:39:41
 */
@Controller("manageAction")
@RequestMapping("/manage")
public class ManageAction {
	
	@Autowired
	private ManageService ManageService;


	/**
	* @Title: UserManage 
	* @Description: 显示用户列表
	* @return String    
	* @throws
	 */
	@RequestMapping("/usermanage")
	public String UserManage(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("admin")==null){
			return"redirect:/error2.jsp";
		}
		else{
		List<User> user=ManageService.FindUserAll();
		request.setAttribute("alluser", user);
		return "usermanage";

	}
	}
	/*
	 * 删除用户
	 */
	@RequestMapping("/userdelete")
	public String UserDelete(User user,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("admin")==null){
			return"redirect:/error2.jsp";
		}else{
		ManageService.DelteUser(user);
		List<User> user1=ManageService.FindUserAll();
		request.setAttribute("alluser", user1);
		return "redirect:/success.jsp";
		}
	}
	
	/*
	 * 房屋管理
	 */
	@RequestMapping("/housemanage")
	public String HouseManage(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("admin")==null){
			return"redirect:/error2.jsp";
		}else{
		List<House> house=ManageService.FindHouseAll();
		request.setAttribute("allhouse", house);
		return "housemanage";
		}
	}
	/*
	 * 房屋删除
	 */
	@RequestMapping("/housedelete")
	public String HouseDelete(House house,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("admin")==null){
			return"redirect:/error2.jsp";
		}else{
		ManageService.DelteHouse(house);
		List<House> house1=ManageService.FindHouseAll();
		request.setAttribute("allhouse", house1);
		return "redirect:/success.jsp";
		}
	}
	/*
	 * 消息管理
	 */
	@RequestMapping("/messagemanage")
	public String MessageManage(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("admin")==null){
			return"redirect:/error2.jsp";
		}else{
		List<Message> message=ManageService.FindMessageAll();
		request.setAttribute("allmessage", message);
		return "messagemanage";
		}
	}
	/*
	 * 消息删除
	 */
	@RequestMapping("/messagedelete")
	public String MessageDelete(Message message,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("admin")==null){
			return"redirect:/error2.jsp";
		}else{
		ManageService.DelteMessage(message);
		List<Message> message1=ManageService.FindMessageAll();
		request.setAttribute("allmessage", message1);
		return "redirect:/success.jsp";
	
		}
	}
	/**
	* @Title: HouseUpdate 
	* @Description: 房屋上传  
	* @return String    
	* @throws
	 */
	@RequestMapping("/house")
	public String UpdateHouse(House house,String imageName,MultipartFile uploadFile,HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		if(request.getSession().getAttribute("user")==null){
			return"redirect:/error2.jsp";
		}else{
		String basePath=request.getServletContext().getRealPath("images");
		String fileName=uploadFile.getOriginalFilename();		
		String uuid=UUID.randomUUID().toString().replace("-", "").toUpperCase();
		fileName=uuid+"_"+fileName;
		uploadFile.transferTo(new File(basePath,fileName));
		house.setPicture(fileName);
		User user=(User) request.getSession().getAttribute("user");
		house.setUser(user.getUsername());
		ManageService.UpdateHouse(house);
		return "redirect:/success.jsp";
	}
	}
	/*
	 * 留言管理
	 */
	@RequestMapping("/contactmanage")
	public String ContactManage(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("admin")==null){
			return"redirect:/error2.jsp";
		}else{
		List<Contact> Contact=ManageService.AllContact();
		request.setAttribute("contact", Contact);
		return "contactmanage";
		}
	}

	/*
	 * 留言删除
	 */
	@RequestMapping("/contactdelete")
	public String ContactDelete(Contact Contact,HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		if(request.getSession().getAttribute("admin")==null){
			return"redirect:/error2.jsp";
		}else{
		ManageService.DelteContact(Contact);
		List<Message> Contact1=ManageService.FindMessageAll();
		request.setAttribute("contact", Contact1);
		return "redirect:/success.jsp";
	
		}
	}
	

}
