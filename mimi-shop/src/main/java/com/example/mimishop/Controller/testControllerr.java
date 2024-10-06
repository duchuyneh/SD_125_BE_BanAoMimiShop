package com.example.mimishop.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class testControllerr {
    @GetMapping("/hien-thi-test")
    public String hienThi(Model model){
        return "/hello";
    }

}
