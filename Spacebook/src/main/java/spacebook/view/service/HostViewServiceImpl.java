package spacebook.view.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.EtcSpaceDTO;
import spacebook.view.model.SpaceDetailDAO;
import spacebook.view.model.SpaceFacilityDTO;

@Service
public class HostViewServiceImpl implements HostViewService {
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

	@Override
	public SpaceFacilityDTO facilityList(String fac_no) {
		return dao.facilityList(fac_no);
	}
}
