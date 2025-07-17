package com.ccsd.ccsddirectoryjava.controllers;

import com.ccsd.ccsddirectoryjava.repositories.ContactRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller




public class AuthController {

    @Autowired
    private ContactRepo contactRepo;


        @GetMapping("/login")
        public String login() {
            return "admin/login";
        }

        @GetMapping("/login-error/")
        public String loginError() {
            return "admin/login-error";
        }

        @GetMapping("admin/dashboard/")
        public String dashboard(Model model) {
            model.addAttribute("contacts", contactRepo.findAll(PageRequest.of(0, 5)).getContent());

            return "admin/dashboard";
        }


}
