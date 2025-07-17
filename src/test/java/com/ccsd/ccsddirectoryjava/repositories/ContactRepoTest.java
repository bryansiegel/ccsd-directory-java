package com.ccsd.ccsddirectoryjava.repositories;

import com.ccsd.ccsddirectoryjava.models.Contact;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.ActiveProfiles;

import java.util.List;
import java.util.Optional;

import static org.junit.jupiter.api.Assertions.*;

@DataJpaTest
@ActiveProfiles("test")
class ContactRepoTest {

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private ContactRepo contactRepo;

    private Contact testContact1;
    private Contact testContact2;

    @BeforeEach
    void setUp() {
        testContact1 = new Contact();
        testContact1.setName("John Doe");
        testContact1.setDivision("IT");
        testContact1.setDepartment("Development");
        testContact1.setPosition("Developer");
        testContact1.setPhone("555-1234");
        testContact1.setDialExtension("123");
        testContact1.setFax("555-5678");
        testContact1.setLocationCode("A1");
        testContact1.setAddress("123 Main St");

        testContact2 = new Contact();
        testContact2.setName("Jane Smith");
        testContact2.setDivision("HR");
        testContact2.setDepartment("Recruitment");
        testContact2.setPosition("HR Manager");
        testContact2.setPhone("555-9876");
        testContact2.setDialExtension("456");
        testContact2.setFax("555-5432");
        testContact2.setLocationCode("B2");
        testContact2.setAddress("456 Oak Ave");
    }

    @Test
    void testSaveAndFindById() {
        // Save contact
        Contact savedContact = contactRepo.save(testContact1);
        entityManager.flush();

        // Verify save
        assertNotNull(savedContact.getId());
        assertEquals("John Doe", savedContact.getName());

        // Find by ID
        Optional<Contact> foundContact = contactRepo.findById(savedContact.getId());
        assertTrue(foundContact.isPresent());
        assertEquals("John Doe", foundContact.get().getName());
        assertEquals("IT", foundContact.get().getDivision());
    }

    @Test
    void testFindAll() {
        // Save multiple contacts
        contactRepo.save(testContact1);
        contactRepo.save(testContact2);
        entityManager.flush();

        // Find all
        List<Contact> contacts = contactRepo.findAll();
        assertEquals(2, contacts.size());
    }

    @Test
    void testUpdate() {
        // Save contact
        Contact savedContact = contactRepo.save(testContact1);
        entityManager.flush();

        // Update contact
        savedContact.setName("John Updated");
        savedContact.setPosition("Senior Developer");
        Contact updatedContact = contactRepo.save(savedContact);
        entityManager.flush();

        // Verify update
        assertEquals("John Updated", updatedContact.getName());
        assertEquals("Senior Developer", updatedContact.getPosition());
        
        // Verify in database
        Optional<Contact> foundContact = contactRepo.findById(savedContact.getId());
        assertTrue(foundContact.isPresent());
        assertEquals("John Updated", foundContact.get().getName());
        assertEquals("Senior Developer", foundContact.get().getPosition());
    }

    @Test
    void testDelete() {
        // Save contact
        Contact savedContact = contactRepo.save(testContact1);
        entityManager.flush();
        Long contactId = savedContact.getId();

        // Verify exists
        assertTrue(contactRepo.existsById(contactId));

        // Delete contact
        contactRepo.deleteById(contactId);
        entityManager.flush();

        // Verify deleted
        assertFalse(contactRepo.existsById(contactId));
        Optional<Contact> foundContact = contactRepo.findById(contactId);
        assertFalse(foundContact.isPresent());
    }

    @Test
    void testExistsById() {
        // Save contact
        Contact savedContact = contactRepo.save(testContact1);
        entityManager.flush();

        // Test exists
        assertTrue(contactRepo.existsById(savedContact.getId()));
        assertFalse(contactRepo.existsById(999L));
    }

    @Test
    void testCount() {
        // Initially should be 0
        assertEquals(0, contactRepo.count());

        // Save contacts
        contactRepo.save(testContact1);
        contactRepo.save(testContact2);
        entityManager.flush();

        // Should be 2
        assertEquals(2, contactRepo.count());
    }

    @Test
    void testSaveWithNullValues() {
        Contact contact = new Contact();
        contact.setName("Minimal Contact");
        // Leave other fields null

        Contact savedContact = contactRepo.save(contact);
        entityManager.flush();

        assertNotNull(savedContact.getId());
        assertEquals("Minimal Contact", savedContact.getName());
        assertNull(savedContact.getDivision());
        assertNull(savedContact.getDepartment());
        assertNull(savedContact.getPosition());
        assertNull(savedContact.getPhone());
        assertNull(savedContact.getDialExtension());
        assertNull(savedContact.getFax());
        assertNull(savedContact.getLocationCode());
        assertNull(savedContact.getAddress());
    }

    @Test
    void testSaveWithEmptyStrings() {
        Contact contact = new Contact();
        contact.setName("Empty Fields Contact");
        contact.setDivision("");
        contact.setDepartment("");
        contact.setPosition("");
        contact.setPhone("");
        contact.setDialExtension("");
        contact.setFax("");
        contact.setLocationCode("");
        contact.setAddress("");

        Contact savedContact = contactRepo.save(contact);
        entityManager.flush();

        assertNotNull(savedContact.getId());
        assertEquals("Empty Fields Contact", savedContact.getName());
        assertEquals("", savedContact.getDivision());
        assertEquals("", savedContact.getDepartment());
        assertEquals("", savedContact.getPosition());
        assertEquals("", savedContact.getPhone());
        assertEquals("", savedContact.getDialExtension());
        assertEquals("", savedContact.getFax());
        assertEquals("", savedContact.getLocationCode());
        assertEquals("", savedContact.getAddress());
    }

    @Test
    void testAutoGeneratedId() {
        // Save contact without setting ID
        Contact savedContact = contactRepo.save(testContact1);
        entityManager.flush();

        // ID should be auto-generated
        assertNotNull(savedContact.getId());
        assertTrue(savedContact.getId() > 0);
    }

    @Test
    void testCreatedAtTimestamp() {
        // Save contact
        Contact savedContact = contactRepo.save(testContact1);
        entityManager.flush();

        // Created at should be set automatically
        assertNotNull(savedContact.getCreatedAt());
    }
}