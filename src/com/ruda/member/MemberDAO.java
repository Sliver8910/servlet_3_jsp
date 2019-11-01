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
		
		this.sql = "insert into member values(?,?,?,?,?,3)";
		st = con.prepareStatement(sql);
		st.setString(1, dto.getId());
		st.setString(2, dto.getPw());
		st.setString(3, dto.getName());
		st.setString(4, dto.getEmail());
		st.setString(5, dto.getPhone());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	public int memberDelete(Connection con, MemberDTO dto) throws Exception {
		
		this.sql = "delete member where id=?";
		this.st = con.prepareStatement(sql);
		st.setString(1, dto.getId());
		
		this.result = st.executeUpdate();
		
		st.close();
		
		return result;
	}
	
	public MemberDTO memberLogin(Connection con, MemberDTO dto) throws Exception{
		
		this.sql = "select * from member where id=? and pw = ?";
		this.st = con.prepareStatement(sql);
		st.setString(1, dto.getId());
		st.setString(2, dto.getPw());
		this.rs = st.executeQuery();
		if(rs.next()) {
			dto.setName(rs.getString(3));
			dto.setPhone(rs.getString(4));
			dto.setEmail(rs.getString(5));
			dto.setLev(rs.getInt(6));
			
		}else {
			dto = null;
		}
		
		rs.close();
		st.close();
		
		
		return dto;
	}
	
	public int memberUpdate(Connection con, MemberDTO dto)throws Exception {

		String sql = "update member set pw=?, name=?, phone=?, email=? where id=? ";
		this.st = con.prepareStatement(sql);
		st.setString(1, dto.getPw());
		st.setString(2, dto.getName());
		st.setString(3, dto.getPhone());
		st.setString(4, dto.getEmail());
		st.setString(5, dto.getId());
		
		this.result = st.executeUpdate();
		st.close();
	
	return result;
	}
}
