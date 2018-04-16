package spacebook.admin.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.admin.model.NoticeDAO;
import spacebook.admin.model.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeDAO dao;

	public void setDao(NoticeDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<NoticeDTO> getArticles(String pageNumber) {
		List<NoticeDTO> articles = dao.getArticles("Notice.noticeList",pageNumber);
		return articles;
	}

	@Override
	public int insertNotice(NoticeDTO dto) {
		String now = new SimpleDateFormat("yy년 MM월 dd일 hh시 mm분").format(new Date());
		dto.setNotice_Date(now);
		int check = dao.insertNotice("Notice.insertNotice", dto);
		return check;
	}

	@Override
	public int countNotice() {
		int noticeCount = dao.noticeCount("Notice.noticeCount");
		return noticeCount;
	}

	@Override
	public NoticeDTO getArticle(String notice_No) {
		NoticeDTO dto = dao.getArticle("Notice.noticeOne", notice_No);
		return dto;
	}

	@Override
	public int deleteNotice(String notice_No) {
		int check = dao.deleteNotice("Notice.deleteNotice", notice_No);
		return check;
	}

	@Override
	public int updateNotice(NoticeDTO dto) {
		int check =dao.updateNotice("Notice.updateNotice",dto);
		return check;
	}

}
