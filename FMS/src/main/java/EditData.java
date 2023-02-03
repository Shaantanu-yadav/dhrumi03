import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertData
 */
@WebServlet("/EditData")
public class EditData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditData() {
        super();
        // TODO Auto-generated constructor stub 
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String customerCode = request.getParameter("customerCode");
		String customerName = request.getParameter("customerName");
		//String productGroup = request.getParameter("productGroup");
		String productGroup = "1";
		String sap = request.getParameter("sap");
		//String salesRep = request.getParameter("salesRep");
		String salesRep = "GE";
		String remarks = request.getParameter("remarks"); 
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "password");
			
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement("update test.xyz_tbl set (customerCode, cusName, productGroup, SapCusCode, salesRep, remarks) VALUES (?,?,?,?,?,?)");
			ps.setString(1, customerCode);
			ps.setString(2, customerName);
			ps.setString(3, productGroup);
			ps.setString(4, sap); 
			ps.setString(5, salesRep);
			ps.setString(6, remarks);
			int x = ps.executeUpdate();
			if(x > 0) {
	
				PrintWriter out = response.getWriter();
				out.print("Done");
			} else {
				PrintWriter out = response.getWriter();
				out.print("Not Done");
			}
			ps.close();
		}
		
		catch(Exception e) {
			PrintWriter out = response.getWriter();
			out.print(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
	}

}