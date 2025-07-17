package com.ccsd.ccsddirectoryjava.controllers;

import com.ccsd.ccsddirectoryjava.models.Contact;
import com.ccsd.ccsddirectoryjava.repositories.ContactRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Optional;

@Controller
@RequestMapping("/admin/contacts")
public class ContactController {

    @Autowired
    private ContactRepo contactRepo;

    @GetMapping
    public String index(Model model) {
        model.addAttribute("contacts", contactRepo.findAll());
        return "admin/contacts/index";

    }

    @GetMapping("/create")
    public String create(Model model) {
        model.addAttribute("contact", new Contact());
        return "admin/contacts/create";
    }

    @PostMapping
    public String store(@ModelAttribute Contact contact, RedirectAttributes redirectAttributes) {
        contact.setId(null);
        contactRepo.save(contact);
        redirectAttributes.addFlashAttribute("success", "Contact created successfully!");
        return "redirect:/admin/contacts";
    }

    @GetMapping("/{id}/edit")
    public String edit(@PathVariable Long id, Model model) {
        Optional<Contact> contact = contactRepo.findById((long) id.intValue());
        if (contact.isPresent()) {
            model.addAttribute("contact", contact.get());
            return "admin/contacts/edit";
        }
        return "redirect:/admin/contacts";
    }

    @PostMapping("/{id}")
    public String update(@PathVariable Long id, @ModelAttribute Contact contact, RedirectAttributes redirectAttributes) {
        contact.setId(id);
        contactRepo.save(contact);
        redirectAttributes.addFlashAttribute("success", "Contact updated successfully!");
        return "redirect:/admin/contacts";
    }

    @PostMapping("/{id}/delete")
    public String delete(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        if (contactRepo.existsById((long) id.intValue())) {
            contactRepo.deleteById((long) id.intValue());
            redirectAttributes.addFlashAttribute("success", "Contact deleted successfully!");
        }
        return "redirect:/admin/contacts";
    }
}