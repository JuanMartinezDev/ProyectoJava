/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import Data.ClienteDL;
import Model.Clientes;
import java.util.List;

/**
 *
 * @author USUARIO
 */
public class ClienteBL {
    ClienteDL clienteDL=new ClienteDL();
    
    public List listar(){
        return clienteDL.listar();
    }
    public void insertar (Clientes c){
        clienteDL.insertar(c);
    }
    public List buscar(int id){
        return clienteDL.buscar(id);
    }
    public void actualizar (Clientes c){
        clienteDL.actualizar(c);
    }
    public void eliminar(int id){
        clienteDL.eliminar(id);
    }
}
