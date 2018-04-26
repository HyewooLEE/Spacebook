package spacebook.rent.view;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsView;

import spacebook.rent.model.SpaceRentDTO;

public class ExportExcelRent extends AbstractXlsView {

	@SuppressWarnings("unchecked")
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,	HttpServletResponse response) throws Exception {
		response.setHeader("Content-Disposition","attachment; filename=\"spaceRentList.xls\";");

		Sheet sheet = createFirstSheet(workbook);
		createColumnLabel(sheet);

		List<SpaceRentDTO> space_Rent = (List<SpaceRentDTO>) model.get("rentList");
		int rowNum = 1;
		for (SpaceRentDTO rent : space_Rent) {
			createRentListRows(sheet, rent, rowNum++);
		}
	}

	private Sheet createFirstSheet(Workbook workbook) {
		Sheet sheet = workbook.createSheet();
		workbook.setSheetName(0, "리스트");
		
		return sheet;
	}

	private void createColumnLabel(Sheet sheet) {
		Row firstRow = sheet.createRow(0);	//1번째 줄 생성
		Cell cell = firstRow.createCell(0);  //1번째칸
		cell.setCellValue("공간명");
		cell = firstRow.createCell(1);  //2번째 칸에는 페이지 입력
		cell.setCellValue("예약자");
		cell = firstRow.createCell(2);  //3번째 칸에는 페이지 입력
		cell.setCellValue("결제방법");
		cell = firstRow.createCell(3);  //4번째 칸에는 페이지 입력
		cell.setCellValue("남긴말");
		cell = firstRow.createCell(4);  //5번째 칸에는 페이지 입력
		cell.setCellValue("작성일");
	}

	private void createRentListRows(Sheet sheet, SpaceRentDTO rent, int rowNum) {  //위에서 실행
		Row row = sheet.createRow(rowNum);
		Cell cell = row.createCell(0);
		cell.setCellValue(rent.getSpaceDTO().getSpace_name());  //rank크에 있는 Rank를 가져옴

		cell = row.createCell(1);
		cell.setCellValue(rent.getRent_name());
		
		cell = row.createCell(2);
		cell.setCellValue(rent.getRent_pay_method());
		
		cell = row.createCell(3);
		cell.setCellValue(rent.getRent_note());
		
		cell = row.createCell(4);
		cell.setCellValue(rent.getRent_writedate());
	}
}
