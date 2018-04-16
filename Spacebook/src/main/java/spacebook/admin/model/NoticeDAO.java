package spacebook.admin.model;

import java.util.List;
import org.mybatis.spring.support.SqlSessionDaoSupport;

public class NoticeDAO extends SqlSessionDaoSupport {
	public List<NoticeDTO> getArticles(String QueryId, String pageNumber) {
		List<NoticeDTO> articles = getSqlSession().selectList(QueryId, pageNumber);
		return articles;
	}
	public int insertNotice(String QueryId, NoticeDTO dto) {
		int check = getSqlSession().insert(QueryId, dto);
		return check;
	}
	public int updateNotice(String QueryId, NoticeDTO dto) {
		int check = getSqlSession().update(QueryId, dto);
		return check;
	}
	public int deleteNotice(String QueryId, String notice_No) {
		int check = getSqlSession().delete(QueryId, notice_No);
		return check;
	}
	public int noticeCount(String QueryId) {
		int noticeCount = getSqlSession().selectOne(QueryId);
		return noticeCount;
	}
	public NoticeDTO getArticle(String QueryId, String notice_No) {
		NoticeDTO dto = getSqlSession().selectOne(QueryId, notice_No);
		return dto;
	}
}
