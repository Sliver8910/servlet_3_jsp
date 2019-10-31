package com.ruda.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	Connection con;
	PreparedStatement st;
	ResultSet rs;
	String sql;
	int result;
	
	public MemberDAO() {
		con=null;
		st=null;
		rs=null;
		sql=null;
		result = 0;

	}
	
	
	public int memberJoin(Connection con, MemberDTO dto) throws Exception{
		
		this.sql = "insert into member values(?,?,?,?,?,?)";
		st = con.prepareStatement(sql);
		st.setString(1, dto.getId());
		st.setString(2, dto.getPw());
		st.setString(3, dto.getName());
		st.setString(4, dto.getEmail());
		st.setString(5, dto.getPhone());
		st.setInt(6, dto.getLev());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}

}
