package com.party.rout.repos;

import com.party.rout.model.Gender;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GenderRepository extends JpaRepository <Gender, Long> {
    Gender FindById(int id);
}
