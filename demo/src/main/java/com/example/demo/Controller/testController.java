package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class testController {
    @GetMapping("/helloContro")
    public String hello() {
        return "home/test1";  // Spring Boot sẽ tự động tìm hello.jsp trong thư mục WEB-INF/views/
    }
}
