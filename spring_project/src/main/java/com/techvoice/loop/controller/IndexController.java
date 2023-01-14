package com.techvoice.loop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {
    @GetMapping("{path:^(?!.*static).*$}/**")
    public String all() {
        return "index";
    }
}
