package spacebook.tiles.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.sf.json.JSONObject;
import spacebook.login.model.MemberVO;

@Controller
public class contacts {

	@Autowired 
	JavaMailSender sender; 

	@RequestMapping(value="/contacts.do", method=RequestMethod.GET, produces="text/plain;charset=utf-8")
	public void contact(HttpSession session, HttpServletResponse response, @RequestParam("con_title") String con_title, @RequestParam("con_note") String con_note) throws Exception {
		MemberVO member = (MemberVO)session.getAttribute("login");

		SimpleMailMessage message = new SimpleMailMessage(); 
		message.setTo("khspacebook@gmail.com");	// String, String[] 
		message.setFrom(member.getMem_Id()); // 적용되지 않음 
		message.setSubject("<"+ member.getMem_Name() +"> "+ con_title); // 제목   
		message.setText(con_note); 
		sender.send(message); //send가 발송 ... SimpleMailmessage / MimeMessage 둘중하나 

		JSONObject jso = new JSONObject();
		jso.put("data", 1);
		
		PrintWriter out = response.getWriter();
		out.println(jso.toString());
	}
}