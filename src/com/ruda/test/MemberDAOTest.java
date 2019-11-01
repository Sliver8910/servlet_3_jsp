package com.ruda.test;

import static org.junit.Assert.*;

import java.sql.Connection;

import org.junit.Test;

import com.ruda.member.MemberDAO;
import com.ruda.member.MemberDTO;
import com.ruda.util.DBConnector;

public class MemberDAOTest {

	@Test
	public void test() throws Exception{
		MemberDAO memberDAO = new MemberDAO();
		Connection con = DBConnector.getConnection();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId("dd");
		memberDTO.setPw("dddd");
		memberDTO = memberDAO.memberLogin(con, memberDTO);
		
		con.close();
		
		assertNotNull(memberDTO);
	}

}
