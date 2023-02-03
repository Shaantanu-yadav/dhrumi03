package com.gulbrandsen;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



public class ProductMasterDao {

	private String jdbcURL = "jdbc:mysql://localost:3306/product_master";
	private String jdbcUsername = "root";
	private String jdbcPassword = "1234";
	private String jdbcDriver = "com.mysql.jdbc.Driver";

	String listsql = "select* from product_master";
	String insertsql = "insert into product_master" + "(Product Code,Product Name,group,Status) ";                            
	String Updatesql = "update product_master set name=?";
	String deletesql = "delete from product_master where id=?";
	
	private static Connection conn;
	
	public ProductMasterDao(Connection conn)  {
		super();
		this.conn = conn;
		
	}
	//insert
	
	public void insertRecord(Productmaster productMaster) throws SQLException {
		System.out.println(insertsql);
		
		PreparedStatement ps = conn.prepareStatement(insertsql);
		ps.setString(1, productMaster.getProductGroup());
		ps.setString(2, productMaster.getProductCode());
        ps.setString(3, productMaster.getProductName());
        ps.setString(4, productMaster.getSap());
        ps.setString(5, productMaster.getStatus());
        
        
        
	}
	
	public List<Productmaster> selectAll(){
		List<Productmaster> showRecord = new ArrayList<>();
		Productmaster pro = null;
		try {
			
		
		String sql ="Select product_id, product_abbr, product_name,product_group, status from test.product_master";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
	
		while (rs.next()) {
			pro = new Productmaster();
			pro.setProductGroup(rs.getString(1));
			pro.setProductCode(rs.getString(2));
			pro.setProductName(rs.getString(3));
			pro.setSap(rs.getString(4));
			pro.setStatus(rs.getString(5));
			
			showRecord.add(pro);
			
		}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return showRecord;
	}
	
	
}
