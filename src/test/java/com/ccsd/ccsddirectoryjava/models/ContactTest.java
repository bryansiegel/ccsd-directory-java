package com.ccsd.ccsddirectoryjava.models;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.*;

class ContactTest {

    private Contact contact;

    @BeforeEach
    void setUp() {
        contact = new Contact();
    }

    @Test
    void testContactCreation() {
        assertNotNull(contact);
        assertNull(contact.getId());
        assertNull(contact.getName());
        assertNull(contact.getDivision());
        assertNull(contact.getDepartment());
        assertNull(contact.getPosition());
        assertNull(contact.getPhone());
        assertNull(contact.getDialExtension());
        assertNull(contact.getFax());
        assertNull(contact.getLocationCode());
        assertNull(contact.getAddress());
        assertNull(contact.getCreatedAt());
    }

    @Test
    void testSettersAndGetters() {
        // Test ID
        Long id = 1L;
        contact.setId(id);
        assertEquals(id, contact.getId());

        // Test Name
        String name = "John Doe";
        contact.setName(name);
        assertEquals(name, contact.getName());

        // Test Division
        String division = "Information Technology";
        contact.setDivision(division);
        assertEquals(division, contact.getDivision());

        // Test Department
        String department = "Software Development";
        contact.setDepartment(department);
        assertEquals(department, contact.getDepartment());

        // Test Position
        String position = "Software Engineer";
        contact.setPosition(position);
        assertEquals(position, contact.getPosition());

        // Test Phone
        String phone = "(555) 123-4567";
        contact.setPhone(phone);
        assertEquals(phone, contact.getPhone());

        // Test Dial Extension
        String dialExtension = "1234";
        contact.setDialExtension(dialExtension);
        assertEquals(dialExtension, contact.getDialExtension());

        // Test Fax
        String fax = "(555) 123-4568";
        contact.setFax(fax);
        assertEquals(fax, contact.getFax());

        // Test Location Code
        String locationCode = "A123";
        contact.setLocationCode(locationCode);
        assertEquals(locationCode, contact.getLocationCode());

        // Test Address
        String address = "123 Main St, City, State 12345";
        contact.setAddress(address);
        assertEquals(address, contact.getAddress());

        // Test Created At
        LocalDateTime createdAt = LocalDateTime.now();
        contact.setCreatedAt(createdAt);
        assertEquals(createdAt, contact.getCreatedAt());
    }

    @Test
    void testToString() {
        contact.setId(1L);
        contact.setName("John Doe");
        contact.setDivision("IT");
        contact.setDepartment("Development");
        contact.setPosition("Developer");
        contact.setPhone("555-1234");
        contact.setDialExtension("123");
        contact.setFax("555-5678");
        contact.setLocationCode("A1");
        contact.setAddress("123 Main St");
        
        String toString = contact.toString();
        
        assertNotNull(toString);
        assertTrue(toString.contains("id=1"));
        assertTrue(toString.contains("Name='John Doe'"));
        assertTrue(toString.contains("Division='IT'"));
        assertTrue(toString.contains("Department='Development'"));
        assertTrue(toString.contains("Position='Developer'"));
        assertTrue(toString.contains("Phone='555-1234'"));
        assertTrue(toString.contains("DialExtension='123'"));
        assertTrue(toString.contains("Fax='555-5678'"));
        assertTrue(toString.contains("LocationCode='A1'"));
        assertTrue(toString.contains("Address='123 Main St'"));
    }

    @Test
    void testNullValues() {
        // Test that null values are handled properly
        contact.setName(null);
        contact.setDivision(null);
        contact.setDepartment(null);
        contact.setPosition(null);
        contact.setPhone(null);
        contact.setDialExtension(null);
        contact.setFax(null);
        contact.setLocationCode(null);
        contact.setAddress(null);

        assertNull(contact.getName());
        assertNull(contact.getDivision());
        assertNull(contact.getDepartment());
        assertNull(contact.getPosition());
        assertNull(contact.getPhone());
        assertNull(contact.getDialExtension());
        assertNull(contact.getFax());
        assertNull(contact.getLocationCode());
        assertNull(contact.getAddress());
    }

    @Test
    void testEmptyStrings() {
        // Test that empty strings are handled properly
        contact.setName("");
        contact.setDivision("");
        contact.setDepartment("");
        contact.setPosition("");
        contact.setPhone("");
        contact.setDialExtension("");
        contact.setFax("");
        contact.setLocationCode("");
        contact.setAddress("");

        assertEquals("", contact.getName());
        assertEquals("", contact.getDivision());
        assertEquals("", contact.getDepartment());
        assertEquals("", contact.getPosition());
        assertEquals("", contact.getPhone());
        assertEquals("", contact.getDialExtension());
        assertEquals("", contact.getFax());
        assertEquals("", contact.getLocationCode());
        assertEquals("", contact.getAddress());
    }
}