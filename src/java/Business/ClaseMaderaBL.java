/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import Data.ClaseMaderaDL;
import Model.ClaseMadera;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class ClaseMaderaBL {
    ClaseMaderaDL clasemaderaDL=new ClaseMaderaDL();
    
    public List listar(){
        return clasemaderaDL.listar();
    }
    public void insertar (ClaseMadera cl){
        clasemaderaDL.insertar(cl);
    }
    public List buscar(int id){
        return clasemaderaDL.buscar(id);
    }
    public void actualizar (ClaseMadera cl){
        clasemaderaDL.actualizar(cl);
    }
    public void eliminar(int id){
        clasemaderaDL.eliminar(id);
    }

}
