package com.ccsd.ccsddirectoryjava.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthController {
        @GetMapping("/login")
        public String login() {
            return "admin/login";
        }

        @GetMapping("/login-error/")
        public String loginError() {
            return "admin/login-error";
        }

        @GetMapping("admin/dashboard/")
        public String dashboard() {
            return "admin/dashboard";
        }


}
