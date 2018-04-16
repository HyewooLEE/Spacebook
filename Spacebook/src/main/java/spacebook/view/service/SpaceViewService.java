package spacebook.view.service;

import java.util.List;

import spacebook.submit.model.SpaceDTO;
import spacebook.view.model.EtcSpaceDTO;

public interface SpaceViewService {
	public SpaceDTO spaceDetail(int space_no);
	
	public List<EtcSpaceDTO> etcSpaceList(int mem_no);
}
