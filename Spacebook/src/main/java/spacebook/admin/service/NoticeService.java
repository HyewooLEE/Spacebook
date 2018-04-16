package spacebook.admin.service;

import java.util.List;

import spacebook.admin.model.NoticeDTO;

public interface NoticeService {
	public List<NoticeDTO> getArticles(String pageNumber);
	public int insertNotice(NoticeDTO dto);
	public int deleteNotice(String notice_No);
	public int updateNotice(NoticeDTO dto);
	public int countNotice();
	public NoticeDTO getArticle(String notice_No);
}
