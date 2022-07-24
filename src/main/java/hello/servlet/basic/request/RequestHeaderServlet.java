package hello.servlet.basic.request;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet(name = "requestHeaderServlet", urlPatterns = "/request-header")
public class RequestHeaderServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        printStartLine(req);
        printHeader(req);
        printHeaderUtils(req);
        printEtc(req);
    }
    private void printStartLine(HttpServletRequest req){
        System.out.println("--- REQUEST-LINE - start --- ");

        System.out.println("request.getMethod() = " + req.getMethod());
        System.out.println("request.getProtocol() = " + req.getProtocol());
        System.out.println("request.getScheme() = " + req.getScheme());
        //http://localhost:8080/request-header
        System.out.println("request.getRequestURL() = " + req.getRequestURL());
        //request-test
        System.out.println("request.getRequestURI() = " + req.getRequestURI());
        //username=h1
        System.out.println("request.getQueryString() = " + req.getQueryString());
        System.out.println("request.isSecure() = " + req.isSecure());
        System.out.println("--- REQUEST-LINE - end ---");
        System.out.println();
    }
    private void printHeader(HttpServletRequest req){
        System.out.println("--- Headers - start ---");

//        옛날 방식의 Header 추출
//        Enumeration <String> headerNames = req.getHeaderNames();
//        while (headerNames.hasMoreElements()){
//            String headerName = headerNames.nextElement();
//            System.out.println(headerName + ":" + headerName);
//        }
        //위의 결과와 동일하다.
        req.getHeaderNames().asIterator()
                        .forEachRemaining(headerName -> System.out.println(headerName + ":" + headerName));

        System.out.println("--- Headers - end ---");
        System.out.println();
    }
    private void printHeaderUtils(HttpServletRequest request){
        System.out.println("--- Header 편의 조회 start ---");
        System.out.println("[Host 편의 조회]");
        System.out.println("request.getServerName() = " + request.getServerName());
        System.out.println("request.getServerPort() = " + request.getServerPort());
        System.out.println();

        System.out.println("[Accept-Language 편의 조회]");
        request.getLocales().asIterator()
                .forEachRemaining(locale-> System.out.println("local = " + locale));
        System.out.println();

        System.out.println("[cookie 편의 조회]");
        if(request.getCookies() != null){
            for(Cookie cookie : request.getCookies()){
                System.out.println(cookie.getName() + ":" + cookie.getValue());
            }
        }
        System.out.println("--- Header 편의 조회 end ---");
        System.out.println();
    }
    private void printEtc(HttpServletRequest request){
        System.out.println("--- 기타 조회 start ---");

        System.out.println("[Remote 정보]");
        System.out.println("request.getRemoteHost() = " + request.getRemoteHost());
        System.out.println("request.getRemoteAddr() = " + request.getRemoteAddr());
        System.out.println("request.getRemotePort() = " + request.getRemotePort());
        System.out.println();

        System.out.println("[Local 정보]");
        System.out.println("request.getLocalName() = " + request.getLocalName());
        System.out.println("request.getLocalAddr() = " + request.getLocalAddr());
        System.out.println("request.getLocalPort() = " + request.getLocalPort());

        System.out.println("--- 기타 조회 end --- ");
        System.out.println();
    }
}
