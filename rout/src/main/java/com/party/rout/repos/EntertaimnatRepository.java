package com.party.rout.repos;

import com.party.rout.model.Entertainmants;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EntertaimnatRepository extends JpaRepository <Entertainmants, Long> {
    Entertainmants GetById(int id);


}
