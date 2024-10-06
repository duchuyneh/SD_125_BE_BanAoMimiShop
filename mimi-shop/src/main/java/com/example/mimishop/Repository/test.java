package com.example.mimishop.Repository;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class test {
@GetMapping ("/hien-thi-test")
    public String hienThi(Model model){
    return "/hello";
}

}
