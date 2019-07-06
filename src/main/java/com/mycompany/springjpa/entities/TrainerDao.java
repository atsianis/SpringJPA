
package com.mycompany.springjpa.entities;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;

public class TrainerDao {
    
    public Trainer getTrainerById(int id){
        EntityManagerFactory emf = javax.persistence.Persistence.createEntityManagerFactory("com.mycompany_SpringJPA_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        
        Query query = em.createNamedQuery("Trainer.findByTrainerId");
        query.setParameter("trainerId",id);
        Trainer t = (Trainer) query.getSingleResult();
        em.close();
        emf.close();
        return t;
    }
    
    public List<Trainer> getTrainers(){
        EntityManagerFactory emf = javax.persistence.Persistence.createEntityManagerFactory("com.mycompany_SpringJPA_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        
        Query query = em.createNamedQuery("Trainer.findAll");
        List<Trainer> trainers = query.getResultList();
        em.close();
        emf.close();
        return trainers;
    }
    
    public boolean updateTrainer(Trainer t){
        boolean completed = false;
        EntityManagerFactory emf = javax.persistence.Persistence.createEntityManagerFactory("com.mycompany_SpringJPA_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        
        Query query = em.createNamedQuery("Trainer.findByTrainerId");
        query.setParameter("trainerId",t.getTrainerId());
        
        Trainer tFromDB = (Trainer) query.getSingleResult();
        if (tFromDB == t){
            em.close();
            emf.close();
        }else{
            if(!(tFromDB.getFirstName().equals(t.getFirstName()))) {
                tFromDB.setFirstName(t.getFirstName());
            }
            if(!(tFromDB.getLastName().equals(t.getLastName()))) {
                tFromDB.setLastName(t.getLastName());
            }
            if(!(tFromDB.getSubject().equals(t.getSubject()))) {
                tFromDB.setSubject(t.getSubject());
            }
            em.getTransaction().begin();
            try{
                em.persist(tFromDB);
                em.getTransaction().commit();
                completed = true;
            }catch (Exception e) {
                e.printStackTrace();
                em.getTransaction().rollback();
            }finally{
                em.close();
                emf.close();
            }
        }
        return completed;
    }
    
    public boolean addTrainer(Trainer t){
        boolean completed = false;
        EntityManagerFactory emf = javax.persistence.Persistence.createEntityManagerFactory("com.mycompany_SpringJPA_war_1.0-SNAPSHOTPU");
        EntityManager em = emf.createEntityManager();
        
        em.getTransaction().begin();
        try {
            em.persist(t);
            em.getTransaction().commit();
            completed = true;
        } catch(Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        }
        finally {
            em.close();
            emf.close();
        }
        return completed;
        
    }
    
}
