package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.ExpenseDAO;
import model.dao.IncomeDAO;
import model.dao.UserDAO;
import model.domain.UserBean;

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
			UserBean bean = null;
			try {
				bean = UserDAO.isIdValid(new UserBean(request.getParameter("id"), request.getParameter("pw")));
				if (bean != null) {
					request.setAttribute("userInfo", bean);
					request.setAttribute("expenseView", ExpenseDAO.selectAll(bean.getId()));
					url = "expenseList.jsp";
				} else {
					request.setAttribute("error", "아이디 혹은 비밀번호 오류");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher(url).forward(request, response);
		} else if (command.equals("join")) {
			Debugging.printDebuggingMessage("command : " + command);
			url = "join.jsp";
			request.getRequestDispatcher(url).forward(request, response);
		} else if (command.equals("insert")) {
			Debugging.printDebuggingMessage("command : " + command);
		} else if (command.equals("update")) {
			Debugging.printDebuggingMessage("command : " + command);
		} else if (command.equals("delete")) {
			Debugging.printDebuggingMessage("command : " + command);
		} else if (command.equals("expenseList")) {
			try {
				String id = request.getParameter("id");
				request.setAttribute("userInfo", UserDAO.selectOneByIdFromUser(id));
				request.setAttribute("expenseView", ExpenseDAO.selectAll(id));
				url = "expenseList.jsp";
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher(url).forward(request, response);
		} else if (command.equals("incomeList")) {
			try {
				String id = request.getParameter("id");
				request.setAttribute("userInfo", UserDAO.selectOneByIdFromUser(id));
				request.setAttribute("incomeView", IncomeDAO.selectAll(id));
				url = "incomeList.jsp";
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher(url).forward(request, response);
		} else {
			Debugging.printDebuggingMessage("command : " + command);
		}
	}
}
