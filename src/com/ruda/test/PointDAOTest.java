package com.ruda.test;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Random;

import org.junit.Test;

import com.ruda.notice.NoticeDAO;
import com.ruda.notice.NoticeDTO;
import com.ruda.point.PointDAO;
import com.ruda.point.PointDTO;
import com.ruda.util.DBConnector;

public class PointDAOTest {


	/* @Test public void test2() throws Exception{ Connection con =
	  DBConnector.getConnection();

	  assertNotNull(con);

	  }*/

	/*
	 * @Test public void test() throws Exception { PointDAO pointDAO = new
	 * PointDAO(); Connection con = DBConnector.getConnection(); int result =
	 * pointDAO.delete(con, 1234); System.out.println(result); } //단정문 : 희망하는 값과 실제
	 * 값 비교 assertEquals(1, result);
	 */
	/* @Test public void test3() throws Exception{ PointDAO pointDAO = new
	  PointDAO(); Connection con = DBConnector.getConnection(); PointDTO pointDTO =
	  pointDAO.selectOne(con, 2);


	  assertNotNull(pointDTO);

	  }

	  @Test public void test4() throws Exception{ PointDAO pointDAO = new
	  PointDAO(); Connection con = DBConnector.getConnection(); ArrayList<PointDTO>
	  ar = pointDAO.selectList(con);

	  //assertNotNull(ar.get(0)); assertNotEquals(0, ar.size());

	  }
	 */
	@Test 

	public void test5() throws Exception{ 
		NoticeDAO noticeDAO = new NoticeDAO();
		for(int i =0; i<10;i++) {
			Connection con = DBConnector.getConnection(); 
			NoticeDTO noticeDTO = new NoticeDTO();
			noticeDTO.setTitle("title"+i);
			noticeDTO.setWriter("name"+i);
			noticeDTO.setContents("contents"+i);
			noticeDAO.noticeWrite(con, noticeDTO);

			con.close();
		}



	}


	/*
	 * @Test public void test6()throws Exception{ PointDTO pointDTO = new
	 * PointDTO(); pointDTO.setNum(23); pointDTO.setName("change");
	 * pointDTO.setKor(20); pointDTO.setEng(20); pointDTO.setMath(20);
	 * pointDTO.setTotal(60); pointDTO.setAvg(20.0);
	 * 
	 * PointDAO pointDAO = new PointDAO(); Connection con =
	 * DBConnector.getConnection(); int result = pointDAO.update(con, pointDTO);
	 * 
	 * con.close();
	 * 
	 * assertEquals(1, result);
	 * 
	 * 
	 * }
	 */

}
