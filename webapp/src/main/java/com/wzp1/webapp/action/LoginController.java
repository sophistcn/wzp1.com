package com.wzp1.webapp.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wzp1.webapp.constants.WebappConstants;
import com.wzp1.webapp.model.User;
import com.wzp1.webapp.service.UserService;

/**
 * <p>
 * Title:
 * </p>
 *
 * <p>
 * Description:
 * </p>
 *
 * <p>
 * Company: http://wzp1.com
 * </p>
 *
 * @author 吴志平
 * 
 * @QQ/TEL 13699193823
 * 
 * @since：2015年11月13日 下午6:24:09
 * 
 */
@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(User user, HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String contextPath = request.getContextPath();
		
		if ("wzp".equals(user.getuName())  && "wzp".equals(user.getPassword())) {
			HttpSession session = request.getSession();
			session.setAttribute(WebappConstants.SESSION_MEMBER,
					user.getuName());

			response.sendRedirect(contextPath + "/index.jsp");
		} else {
			
			response.sendRedirect(contextPath + "/login.jsp?rs="+WebappConstants.PWD_ERR);
		}
		return "index";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String contextPath = request.getContextPath();
		request.getSession().removeAttribute(WebappConstants.SESSION_MEMBER);
		response.sendRedirect(contextPath + "/index.jsp");
		return "index";
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	
}
