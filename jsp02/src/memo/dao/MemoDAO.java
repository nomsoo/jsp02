package memo.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import memo.dto.MemoDTO;
import sqlmap.MybatisManager;

public class MemoDAO {
	
	//여기서는 List대신 ArrayList를 쓰면 에러가 난다.
	//(mybatis 시스템상 타입을 고정시켜 놨다)
	public List<MemoDTO> listMemo(String searchkey, String search) {
		/*mybatis실행객체 생성
		 * MybatisManager.getInstance()=>SqlSessionFactory
		 * openSession()는 SqlSession객체를 가리킨다.
		 * SqlSession은 기존에 했던 Connection, 
		 * PreparedStatement, ResultSet 모두를 가지고 있다.
		 * 여기서 SqlSession를 쓰는건 Servers의 context.xml에서
		 * maxTotal="50"설정중 1개의 리소스를 이미 써버리는 것이다.
		*/
		
		SqlSession session
		=MybatisManager.getInstance().openSession();
		//memo.xml에 저장될 문장을 실행
		//namespace.id ex)여기서의 memo는 네임스페이스
		//목록을 뽑을 때 selectList()를 쓴다.
		List<MemoDTO> list=null;
		try {
			if(searchkey.equals("writer_memo")){//이름+메모로 검색
				list=session.selectList("memo.listAll",search);
				//search는 검색키워드
			}else{
				Map<String,String> map=new HashMap<>();
				map.put("searchkey", searchkey);
				map.put("search", search);
				
				list=session.selectList("memo.list", map);
				//searchkey, search등 파라미터를 1개이상 쓸 수 없다.
			}
			for(MemoDTO dto : list){//for문으로 처리해야 한다.
				String memo=dto.getMemo();
				//공백 문자 처리(스페이스 2개를 변환)
				memo=memo.replace("  ", "&nbsp;&nbsp;");
				//태그 문자 처리
				memo=memo.replace("<", "&lt;");
				memo=memo.replace(">", "&gt;");
				//키워드에 색상 처리
				if(searchkey.equals("memo")){
					   if(memo.indexOf(search) != -1){
						 memo=memo.replace(search, "<font color='red'>"+search+"</font>");
					   }
				    }

				dto.setMemo(memo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) 
				session.close();//mybatis 객체닫기
		}
		return list;
	}//listMemo()

	public void insertMemo(MemoDTO dto) {
		//mybatis 실행 객체 생성
		SqlSession session
			=MybatisManager.getInstance().openSession();
		
/*		//이름입력영역도 추가처리
		String writer=dto.getWriter();
		//공백 문자 처리(스페이스 2개를 변환)
		writer=writer.replace("  ", "&nbsp;&nbsp;");//insert때보다 select때 처리가 더 좋다.
		//태그 문자 처리
		writer=writer.replace("<", "&lt;"); //Less Than ~보다 작다
		writer=writer.replace(">", "&gt;"); //Greater Than ~보다 크다
		dto.setWriter(writer);
		
		//메모입력영역
		String memo=dto.getMemo();
		//공백 문자 처리(스페이스 2개를 변환)
		memo=memo.replace("  ", "&nbsp;&nbsp;");//insert때보다 select때 처리가 더 좋다.
		//태그 문자 처리
		memo=memo.replace("<", "&lt;"); //Less Than ~보다 작다
		memo=memo.replace(">", "&gt;"); //Greater Than ~보다 크다
		dto.setMemo(memo);*/
		
		session.insert("memo.insert", dto); //레코드 추가, insert메소드는 파라미터가 1개밖에 허용안한다.
		session.commit(); //수동 커밋,mybatis는 자동커밋을 막았다.
		session.close(); //mybatis 세션 닫기
	}//insertMemo
	
	public MemoDTO viewMemo(int idx){
		SqlSession session
		=MybatisManager.getInstance().openSession();
		MemoDTO dto=session.selectOne("memo.view", idx);
		//selectOne() 레코드 1개만 가져올때
		//selectList() 레코드 2개 이상 가져올때(목록을 가져올때)
		session.close();
		return dto;
	}//viewMemo

	public void updateMemo(MemoDTO dto) {
		//mybatis
		SqlSession session
		  =MybatisManager.getInstance().openSession();
		session.update("memo.update", dto);
		session.commit();//select가 아닌경우는 수동커밋
		session.close();
	}//updateMemo()

	public void deletMemo(int idx) {
		SqlSession session
		= MybatisManager.getInstance().openSession();
		session.delete("memo.delete", idx);
		session.commit();
		session.close();
	}//deleteMemo()
	
	
	


}//end class
