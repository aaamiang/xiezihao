package com.sccc;

import java.io.IOException;
import com.sccc.MessageBean;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class AddMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMessageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String author = request.getParameter("author");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		//获取当前时间并格式化时间
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = format.format(new Date());
		MessageBean message = new MessageBean();
		message.setAuthor(author);
		message.setTitle(title);
		message.setContent(content);
		message.setTime(today);
		//获取session对象
		HttpSession session = request.getSession();
		//获取ServletContext
		ServletContext context = session.getServletContext();
		//获取存储在context中的集合对象
		ArrayList wordlist = (ArrayList)context.getAttribute("wordlist");
		if(wordlist == null)
			wordlist = new ArrayList();
		//将封装了信息的值JavaBean存储到集合对象中
		wordlist.add(message);
		//将集合对象保存到应用上下文中
		context.setAttribute("wordlist", wordlist);
		response.sendRedirect("showMessage.jsp");
	}

}
