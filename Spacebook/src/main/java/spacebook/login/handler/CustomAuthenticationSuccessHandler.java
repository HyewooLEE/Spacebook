package spacebook.login.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.util.SystemOutLogger;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.util.StringUtils;

import spacebook.login.model.MemberDTO;
import spacebook.login.model.MemberVO;
import spacebook.login.service.MemberDaoService;

public class CustomAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	private RequestCache requestCache = new HttpSessionRequestCache();

	private String targetUrlParameter;

	private String defaultUrl;

	@Autowired
	private MemberDaoService service;

	private boolean useReferer;

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

	public CustomAuthenticationSuccessHandler() {
		targetUrlParameter = "";
		defaultUrl = "/main.do";
		useReferer = true;
	}

	public void setService(@Qualifier("MemberDaoServiceImpl") MemberDaoService service) {
		this.service = service;
	}

	public String getTargetUrlParameter() {
		return targetUrlParameter;
	}

	public void setTargetUrlParameter(String targetUrlParameter) {
		this.targetUrlParameter = targetUrlParameter;
	}

	public String getDefaultUrl() {
		return defaultUrl;
	}

	public void setDefaultUrl(String defaultUrl) {
		this.defaultUrl = defaultUrl;
	}

	public boolean isUseReferer() {
		return useReferer;
	}

	public void setUseReferer(boolean useReferer) {
		this.useReferer = useReferer;
	}

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		// TODO Auto-generated method stub

		clearAuthenticationAttributes(request);
		MemberDTO dto = (MemberDTO) authentication.getPrincipal();
		MemberVO vo = service.selectMember(dto.getUsername());
		
		int intRedirectStrategy = decideRedirectStrategy(request, response,vo);
		switch (intRedirectStrategy) {
		case 1:
			useTargetUrl(request, response);
			break;
		case 2:
			useSessionUrl(request, response);
			break;
		case 3:
			useRefererUrl(request, response);
			break;
		case 4:
			response.sendRedirect("join.do");
			break;
		default:
			useDefaultUrl(request, response);
		}
		request.getSession().setAttribute("login", vo);
		
	}

	private void clearAuthenticationAttributes(HttpServletRequest request) {
		HttpSession session = request.getSession(false);

		if (session == null) {
			return;
		}

		session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
	}

	private void useTargetUrl(HttpServletRequest request, HttpServletResponse response) throws IOException {
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		if (savedRequest != null) {
			requestCache.removeRequest(request, response);
		}
		String targetUrl = request.getParameter(targetUrlParameter);
		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	private void useSessionUrl(HttpServletRequest request, HttpServletResponse response) throws IOException {
		SavedRequest savedRequest = requestCache.getRequest(request, response);
		String targetUrl = savedRequest.getRedirectUrl();
		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	private void useRefererUrl(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String targetUrl = request.getHeader("REFERER");
		redirectStrategy.sendRedirect(request, response, targetUrl);
	}

	private void useDefaultUrl(HttpServletRequest request, HttpServletResponse response) throws IOException {
		redirectStrategy.sendRedirect(request, response, defaultUrl);
	}

	/**
	 * 인증 성공후 어떤 URL로 redirect 할지를 결정한다 판단 기준은 targetUrlParameter 값을 읽은 URL이 존재할 경우
	 * 그것을 1순위 1순위 URL이 없을 경우 Spring Security가 세션에 저장한 URL을 2순위 2순위 URL이 없을 경우
	 * Request의 REFERER를 사용하고 그 REFERER URL이 존재할 경우 그 URL을 3순위 3순위 URL이 없을 경우
	 * Default URL을 4순위로 한다
	 * 
	 * @param request
	 * @param response
	 * @return 1 : targetUrlParameter 값을 읽은 URL 2 : Session에 저장되어 있는 URL 3 : referer
	 *         헤더에 있는 url 0 : default url
	 */
	private int decideRedirectStrategy(HttpServletRequest request, HttpServletResponse response,MemberVO vo) {
		int result = 0;

		SavedRequest savedRequest = requestCache.getRequest(request, response);
		if (!"".equals(targetUrlParameter)) {
			String targetUrl = request.getParameter(targetUrlParameter);
			if (StringUtils.hasText(targetUrl)) {
				result = 1;
			} else {
				if (savedRequest != null) {
					result = 2;
				} else {
					String refererUrl = request.getHeader("REFERER");
					if (useReferer && StringUtils.hasText(refererUrl)) {
						result = 3;
					} else {
						result = 0;
					}
				}
			}
			return result;
		}

		if (savedRequest != null) {
			result = 2;
			return result;
		}

		String refererUrl = request.getHeader("REFERER");
		if (useReferer && StringUtils.hasText(refererUrl)) {
			result = 3;
		} else {
			result = 0;
		}
		
		if(vo.getMem_Favor()==null) {
			result =4;
			return result;
		};

		return result;
	}
}
