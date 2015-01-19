package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.IncomeDAO;
import model.dao.MemberDAO;
import model.dao.SpendDAO;
import model.domain.MemberBean;
import model.domain.SpendBean;

/**
 * Servlet implementation class FrontController
 */
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ControllerServlet() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String url = "error.jsp";
		if (command.equals("login")) {
			Debugging.printDebuggingMessage("command : " + command);
			MemberBean member = null;
			try {
				member = MemberDAO.isIdPwValid(new MemberBean(request.getParameter("id"), request.getParameter("pw")));
				request.setAttribute("userInfo", member);
				url = "notView/saveUserInfoToSession.jsp";
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher(url).forward(request, response);
		} else if (command.equals("addSpend")){
			Debugging.printDebuggingMessage("command : " + command);
   			int result = 0;
			try {
				System.out.println((MemberBean)request.getSession().getAttribute("logInUser"));
	   			result = SpendDAO.insertSpend(new SpendBean(Integer.parseInt(request.getParameter("spendCategory")),((MemberBean)request.getSession().getAttribute("logInUser")).getId(), request.getParameter("spendLocation"), Integer.parseInt(request.getParameter("spendPrice")), request.getParameter("spendDate"), request.getParameter("spendMemo")));
			
				if(result==1){
					System.out.println("����� ���� ���� ����!");
				}
				url = "spendList.jsp";//*������ ���� ���..spendList����ϴ� ȭ������
			} catch(SQLException e){
				e.printStackTrace();
			}
			request.getRequestDispatcher(url).forward(request, response);
		}else if (command.equals("deleteFromSpendList")){
			Debugging.printDebuggingMessage("command : " + command);
			request.getAttribute("");
			
		
		
		} else if (command.equals("join")) {
			Debugging.printDebuggingMessage("command : " + command);
			/*	url = "join.jsp";
				request.getRequestDispatcher(url).forward(request, response);*/
		} else if (command.equals("addFromSpendList") || command.equals("addFromIncomeList")) {
			Debugging.printDebuggingMessage("command : " + command);
			request.setAttribute("addCommand", command);
			url = "add.jsp";
			request.getRequestDispatcher(url).forward(request, response);
		} else if (command.equals("update")) {
			Debugging.printDebuggingMessage("command : " + command);
		} else if (command.equals("delete")) {
			Debugging.printDebuggingMessage("command : " + command);
		} else if (command.equals("spendList")) {
			Debugging.printDebuggingMessage("command : " + command);
			try {
				request.setAttribute("spendView", SpendDAO.selectAll(request.getParameter("id")));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("spendList.jsp").forward(request, response);
		} else if (command.equals("incomeList")) {
			Debugging.printDebuggingMessage("command : " + command);
			try {
				request.setAttribute("incomeView", IncomeDAO.selectAll(request.getParameter("id")));
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("incomeList.jsp").forward(request, response);
		} else {
			Debugging.printDebuggingMessage("command : " + command);
		}
	}
}
