package com.party.rout.repos;

import com.party.rout.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category, Long> {
    Category FindById(int id);


}
