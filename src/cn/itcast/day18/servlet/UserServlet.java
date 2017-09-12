package cn.itcast.day18.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.day18.service.UserService;

public class UserServlet extends HttpServlet {
	//直接实例化对象的方式是强耦合，目标是低耦合
	//private UserService us = new UserServiceImpl();
	private static UserService us;
	
	static{
		Properties props = new Properties();
		try {
			props.load( UserServlet.class.getClassLoader().getResourceAsStream("spring.properties") );
			String className = props.getProperty("useClass");
			//使用反射机制创建对象并注入到UserService
			Class clazz = Class.forName(className);
			//创建此类的对象，实现的是Servlet和Service之间的解耦。
			us = (UserService)clazz.newInstance();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//模拟调用业务逻辑
		us.add( null );
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}

}
