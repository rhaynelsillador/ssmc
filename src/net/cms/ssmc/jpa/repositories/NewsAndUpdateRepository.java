package net.cms.ssmc.jpa.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import net.cms.ssmc.model.NewsAndUpdate;

public interface NewsAndUpdateRepository extends CrudRepository<NewsAndUpdate, Long> {

    List<NewsAndUpdate> findByLastName(String lastName);
}