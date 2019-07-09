
package com.mycompany.springjpa.services;

import com.mycompany.springjpa.entities.Trainer;
import com.mycompany.springjpa.entities.TrainerDao;
import java.util.List;

public class TrainerService {
    
    public Trainer getTrainerById(int id){
        TrainerDao tdao = new TrainerDao();
        Trainer t = tdao.getTrainerById(id);
        return t;    
    }
    
    public List<Trainer> getTrainers(){
        TrainerDao tdao = new TrainerDao();
        List<Trainer> trainers =tdao.getTrainers();
        return trainers;
    }
    
    public boolean updateTrainer(Trainer t){
        TrainerDao tdao = new TrainerDao();
        return tdao.updateTrainer(t);
    }
    
    public boolean addTrainer(String fname,String lname,String subject){
        TrainerDao tdao = new TrainerDao();
        return tdao.addTrainer(fname,lname,subject);
    }
    
    public boolean deleteTrainer(int id){
        TrainerDao tdao = new TrainerDao();
        return tdao.deleteTrainer(id);
    }
}
