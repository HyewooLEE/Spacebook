package spacebook.tiles.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.sf.json.JSONObject;

@Controller
public class contacts {

	@Resource(name="mailSender")
	private JavaMailSender mailSender;

	@RequestMapping(value="/contacts.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void contact(HttpSession session, HttpServletResponse response, @RequestParam("con_title") String con_title, @RequestParam("con_note") String con_note, @RequestParam("con_senderName") String con_senderName, @RequestParam("con_senderEmail") String con_senderEmail) throws Exception {
		String mem_no = (String)session.getAttribute("mem_No");
		System.out.println("id::::"+ mem_no);
	
		MimeMessage message = mailSender.createMimeMessage(); 
		
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

		messageHelper.setTo("khspacebook@gmail.com");	// String, String[] 
		messageHelper.setFrom(con_senderEmail); // 적용되지 않음 
		if(mem_no != null) {
			message.setSubject("<회원_"+ con_senderName +"> "+ con_title);
		} else {
			message.setSubject("<비회원_"+ con_senderName +"> "+ con_title);
		} 
		message.setText(con_note); 
		mailSender.send(message); 
		
		//메일 발송 여부 구분
		JSONObject jso = new JSONObject();
		jso.put("data", 1);
		
		PrintWriter out;
		try {
			out = response.getWriter();
			out.println(jso.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}