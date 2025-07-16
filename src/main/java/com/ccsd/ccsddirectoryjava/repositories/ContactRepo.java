package com.ccsd.ccsddirectoryjava.repositories;

import com.ccsd.ccsddirectoryjava.models.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactRepo extends JpaRepository<Contact, Integer> {
}
