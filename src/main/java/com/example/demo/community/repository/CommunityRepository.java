package com.example.demo.community.repository;

import com.example.demo.common.filter.repository.community.CommunityFilteringRepository;
import com.example.demo.community.entity.Community;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CommunityRepository extends JpaRepository<Community, Long>,
        CommunityFilteringRepository {

    @EntityGraph(value = "Community.withCommentsAndReplies", type = EntityGraph.EntityGraphType.LOAD)
    Page<Community> findAllBySiteUser_email(String email, Pageable pageable);
}
