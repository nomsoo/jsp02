package guestbook.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import guestbook.dto.GuestBookDTO;
import sqlmap.MybatisManager;

public class GuestBookDAO {
	//방명록 목록을 리턴, mybatis에서는 ArrayList를 쓰면 에러난다. 
	//List로 쓸것
	public List<GuestBookDTO> getList(String searchkey, String search){
		//mybatis 실행 객체
		SqlSession session=
				MybatisManager.getInstance().openSession();
		//네임스페이스는 생략가능 ex)guestbook.gbList => gbList
		List<GuestBookDTO> list=null;
		if(searchkey.equals("name_content")){//이름+내용
			list=session.selectList("gbListAll", "%"+search+"%");
		}else{
			Map<String,String> map=new HashMap<>();
			map.put("searchkey", searchkey);
			map.put("search", "%"+search+"%");
			list=session.selectList("gbList",map);
		}
		
		//줄바꿈 및 특수문자 처리기능 추가
		for(GuestBookDTO dto : list){
			String content=dto.getContent();
			//태그 문자 처리(처음에 와야 br태그등 영향 안받음)
			content=content.replace("<", "&lt;");
			content=content.replace(">", "&gt;");
			//줄바꿈 처리
			content=content.replace("\n", "<br>");
			//공백 2문자이상 처리
			content=content.replace("  ", "&nbsp;&nbsp;");
			//키워드 색상 처리
			if(!searchkey.equals("name")) {//이름으로만 검색시 제외
				content=content.replace(search, 
				"<span style='color:red'>"+search+"</span>");
			}
			dto.setContent(content);
		}
		session.close();//mybatis 세션닫기
		return list;

	}

	//방명록 insert
	public void gbInsert(GuestBookDTO dto) {
		SqlSession session 
		= MybatisManager.getInstance().openSession();
		session.insert("gbInsert", dto);
		session.commit();
		session.close();
	}//gbInsert

	public boolean passwdCheck(int idx, String passwd) {
		boolean result=false;
		//mybatis 실행객체
		SqlSession session
		 = MybatisManager.getInstance().openSession();
		GuestBookDTO dto=new GuestBookDTO();
		dto.setIdx(idx);
		dto.setPasswd(passwd);
		//레코드가 1개가 리턴될 경우 selectOne
		int count=session.selectOne("passwdCheck", dto);
		session.close();//mybatis sesion 닫기
		if(count==1){
			result=true;
		}
		return result;
	}//passwdCheck
	
	//게시물의 상세정보(idx: 게시물번호)
	public GuestBookDTO gbDetail(int idx){
		GuestBookDTO dto=new GuestBookDTO();
		SqlSession session
		 =MybatisManager.getInstance().openSession();
		dto = session.selectOne("gbDetail", idx);
		session.close();
		return dto;
	}//gbDetail

	//게시물 수정
	public void gbUpdate(GuestBookDTO dto) {
		SqlSession session
		=MybatisManager.getInstance().openSession();
		//"네임스페이스.id"로 정확히 써주는것도 좋다.
		session.update("guestbook.gbUpdate", dto);
		//insert,update,delete 명령어는 반드시 commit을 해야 함.
		session.commit();
		session.close();
	}//gbUpdate()

	public void gbDelete(int idx) {
		SqlSession session
		=MybatisManager.getInstance().openSession();
		session.delete("guestbook.gbDelete", idx);
		session.commit();
		session.close();
	}
	
}
