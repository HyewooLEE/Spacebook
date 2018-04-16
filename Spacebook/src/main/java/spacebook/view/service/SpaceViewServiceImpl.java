package spacebook.view.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.EtcSpaceDTO;
import spacebook.view.model.SpaceDetailDAO;

@Service
public class SpaceViewServiceImpl implements SpaceViewService {
	@Autowired
	SpaceDetailDAO dao;
		
	public void setDao(SpaceDetailDAO dao) {
		this.dao = dao;
	}

	public SpaceDTO spaceDetail(int space_no) {
		
		return dao.spaceDetail(space_no);
	}

	@Override
	public List<EtcSpaceDTO> etcSpaceList(int mem_no) {
		return dao.etcSpaceList(mem_no);
	}
}
