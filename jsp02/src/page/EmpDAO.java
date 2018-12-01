package page;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import sqlmap.MybatisManager;

public class EmpDAO {
	
	public int empCount(){//레코드 갯수처리
		SqlSession session 
		= MybatisManager.getInstance().openSession();
		int count=session.selectOne("emp.empCount");
		session.close();
		return count;
	}

	//페이징 처리
	public List<EmpDTO> empList(int start, int end){
		SqlSession session 
		= MybatisManager.getInstance().openSession();
		
		Map<String,Object> map=new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		System.out.println(map);//콘솔창에 {start=11, end=20}식으로 출력
		List<EmpDTO> items=session.selectList("emp.empList",map);
		session.close();
		return items;
		
	}
}
