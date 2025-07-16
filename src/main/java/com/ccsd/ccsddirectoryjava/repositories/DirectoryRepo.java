package com.ccsd.ccsddirectoryjava.repositories;

import com.ccsd.ccsddirectoryjava.models.Directory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DirectoryRepo extends JpaRepository<Directory,Integer> {
}
