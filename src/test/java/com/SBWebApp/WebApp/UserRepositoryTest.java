package com.SBWebApp.WebApp;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import static org.junit.jupiter.api.Assertions.*;

@DataJpaTest
@AutoConfigureTestDatabase(replace =  Replace.NONE)
@Rollback(false)
class UserRepositoryTest {

    @Autowired
    private UserRepository repo;

    @Autowired
    private TestEntityManager testEM;

    @Test
    public void testCreateUser(){
        User u = new User();
        u.setEmail("dylan@bob.edu");
        u.setPassword("fillet209");
        u.setFirstName("Bob");
        u.setLastName("Dylan");

        User savedU = repo.save(u);
        User existingU = testEM.find(User.class, savedU.getID());

        assertEquals(existingU.getEmail(), u.getEmail());

    }

    @Test
    public void testFindUserByEmail(){
        String email = "ddy@yahoo.ca";
        User u = repo.findByEmail(email);
        assertNotNull(u);
    }

}