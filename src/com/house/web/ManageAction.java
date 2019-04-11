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
 * Description:�˺ŵĿ�����
 * @author zhoujiahai
 * @date ����3:39:41
 */
@Controller("manageAction")
@RequestMapping("/manage")
public class ManageAction {
	
	@Autowired
	private ManageService ManageService;


	/**
	* @Title: UserManage 
	* @Description: ��ʾ�û��б�
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
	 * ɾ���û�
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
	 * ���ݹ���
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
	 * ����ɾ��
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
	 * ��Ϣ����
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
	 * ��Ϣɾ��
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
	* @Description: �����ϴ�  
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
	 * ���Թ���
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
	 * ����ɾ��
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
