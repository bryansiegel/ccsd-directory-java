package com.ccsd.ccsddirectoryjava.controllers;

import com.ccsd.ccsddirectoryjava.models.Contact;
import com.ccsd.ccsddirectoryjava.repositories.ContactRepo;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Arrays;
import java.util.Optional;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.*;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.csrf;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test")
class ContactControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private ContactRepo contactRepo;

    private Contact testContact;

    @BeforeEach
    void setUp() {
        testContact = new Contact();
        testContact.setId(1L);
        testContact.setName("John Doe");
        testContact.setDivision("IT");
        testContact.setDepartment("Development");
        testContact.setPosition("Developer");
        testContact.setPhone("555-1234");
        testContact.setDialExtension("123");
        testContact.setFax("555-5678");
        testContact.setLocationCode("A1");
        testContact.setAddress("123 Main St");
    }

    @Test
    @WithMockUser
    void testIndex() throws Exception {
        when(contactRepo.findAll()).thenReturn(Arrays.asList(testContact));

        mockMvc.perform(get("/admin/contacts"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/contacts/index"))
                .andExpect(model().attributeExists("contacts"));

        verify(contactRepo).findAll();
    }

    @Test
    void testIndexWithoutAuthentication() throws Exception {
        mockMvc.perform(get("/admin/contacts"))
                .andExpect(status().isUnauthorized());
    }

    @Test
    @WithMockUser
    void testCreate() throws Exception {
        mockMvc.perform(get("/admin/contacts/create"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/contacts/create"))
                .andExpect(model().attributeExists("contact"));
    }

    @Test
    @WithMockUser
    void testStore() throws Exception {
        when(contactRepo.save(any(Contact.class))).thenReturn(testContact);

        mockMvc.perform(post("/admin/contacts")
                .with(csrf())
                .param("name", "John Doe")
                .param("division", "IT")
                .param("department", "Development")
                .param("position", "Developer")
                .param("phone", "555-1234")
                .param("dialExtension", "123")
                .param("fax", "555-5678")
                .param("locationCode", "A1")
                .param("address", "123 Main St"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/contacts"))
                .andExpect(flash().attributeExists("success"));

        verify(contactRepo).save(any(Contact.class));
    }

    @Test
    @WithMockUser
    void testStoreWithMinimalData() throws Exception {
        when(contactRepo.save(any(Contact.class))).thenReturn(testContact);

        mockMvc.perform(post("/admin/contacts")
                .with(csrf())
                .param("name", "Jane Doe"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/contacts"))
                .andExpect(flash().attributeExists("success"));

        verify(contactRepo).save(any(Contact.class));
    }

    @Test
    @WithMockUser
    void testEdit() throws Exception {
        when(contactRepo.findById(1L)).thenReturn(Optional.of(testContact));

        mockMvc.perform(get("/admin/contacts/1/edit"))
                .andExpect(status().isOk())
                .andExpect(view().name("admin/contacts/edit"))
                .andExpect(model().attributeExists("contact"));

        verify(contactRepo).findById(1L);
    }

    @Test
    @WithMockUser
    void testEditNotFound() throws Exception {
        when(contactRepo.findById(999L)).thenReturn(Optional.empty());

        mockMvc.perform(get("/admin/contacts/999/edit"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/contacts"));

        verify(contactRepo).findById(999L);
    }

    @Test
    @WithMockUser
    void testUpdate() throws Exception {
        when(contactRepo.save(any(Contact.class))).thenReturn(testContact);

        mockMvc.perform(post("/admin/contacts/1")
                .with(csrf())
                .param("name", "John Updated")
                .param("division", "IT Updated")
                .param("department", "Development Updated")
                .param("position", "Senior Developer")
                .param("phone", "555-9999")
                .param("dialExtension", "999")
                .param("fax", "555-8888")
                .param("locationCode", "B2")
                .param("address", "456 Updated St"))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/contacts"))
                .andExpect(flash().attributeExists("success"));

        verify(contactRepo).save(any(Contact.class));
    }

    @Test
    @WithMockUser
    void testDelete() throws Exception {
        when(contactRepo.existsById(1L)).thenReturn(true);

        mockMvc.perform(post("/admin/contacts/1/delete")
                .with(csrf()))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/contacts"))
                .andExpect(flash().attributeExists("success"));

        verify(contactRepo).existsById(1L);
        verify(contactRepo).deleteById(1L);
    }

    @Test
    @WithMockUser
    void testDeleteNotFound() throws Exception {
        when(contactRepo.existsById(999L)).thenReturn(false);

        mockMvc.perform(post("/admin/contacts/999/delete")
                .with(csrf()))
                .andExpect(status().is3xxRedirection())
                .andExpect(redirectedUrl("/admin/contacts"));

        verify(contactRepo).existsById(999L);
        verify(contactRepo, never()).deleteById(anyLong());
    }

    @Test
    void testStoreWithoutAuthentication() throws Exception {
        mockMvc.perform(post("/admin/contacts")
                .with(csrf())
                .param("name", "John Doe"))
                .andExpect(status().isUnauthorized());
    }

    @Test
    void testStoreWithoutCsrf() throws Exception {
        mockMvc.perform(post("/admin/contacts")
                .param("name", "John Doe"))
                .andExpect(status().isForbidden());
    }

    @Test
    @WithMockUser
    void testUpdateWithoutCsrf() throws Exception {
        mockMvc.perform(post("/admin/contacts/1")
                .param("name", "John Updated"))
                .andExpect(status().isForbidden());
    }

    @Test
    @WithMockUser
    void testDeleteWithoutCsrf() throws Exception {
        mockMvc.perform(post("/admin/contacts/1/delete"))
                .andExpect(status().isForbidden());
    }
}