package och17;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class SimpleFilter implements Filter {

//	뉴 클래스에 Filter만들때 
//	하단 Interface에서 add -> Filter 검색 후
//	javax servlet 선택 아파치있는걸로
//	콘솔창에 Filter 시작Filter 끝 출력되는걸로 FIlter 되는거 확인
//	web.xml을 수정
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Filter 시작");
		// 또 다른 Filter 수행
		chain.doFilter(request, response);
		System.out.println("Filter 끝");
	}

}
