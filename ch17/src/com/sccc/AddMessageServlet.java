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
		//��ȡ��ǰʱ�䲢��ʽ��ʱ��
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = format.format(new Date());
		MessageBean message = new MessageBean();
		message.setAuthor(author);
		message.setTitle(title);
		message.setContent(content);
		message.setTime(today);
		//��ȡsession����
		HttpSession session = request.getSession();
		//��ȡServletContext
		ServletContext context = session.getServletContext();
		//��ȡ�洢��context�еļ��϶���
		ArrayList wordlist = (ArrayList)context.getAttribute("wordlist");
		if(wordlist == null)
			wordlist = new ArrayList();
		//����װ����Ϣ��ֵJavaBean�洢�����϶�����
		wordlist.add(message);
		//�����϶��󱣴浽Ӧ����������
		context.setAttribute("wordlist", wordlist);
		response.sendRedirect("showMessage.jsp");
	}

}
