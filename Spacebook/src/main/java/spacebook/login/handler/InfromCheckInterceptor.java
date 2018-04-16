package spacebook.login.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import spacebook.login.model.MemberVO;

@Component
public class InfromCheckInterceptor extends HandlerInterceptorAdapter {
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object Handler, ModelAndView modelAndView) throws Exception {
		MemberVO check = (MemberVO) request.getSession().getAttribute("login") ;
		if (check.getMem_Name()==null) {
			modelAndView.setViewName("redirect:/join.do");
		}else {
			modelAndView.setViewName("redirect:/main.do");
		}
	}



}
