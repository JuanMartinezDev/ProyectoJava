/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;

import Model.Clientes;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Juancho 123
 */
public class ClienteDL {

    Conexion con = new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    List datos;
    
    public List listar(){
        String sql = "select * from clientes";
        datos = jdbctemplate.queryForList(sql);
        return datos;
    }
    public void insertar (Clientes c){
        String sql="insert into clientes "
                + "(nombre,apellidos,documento,direccion,telefono,email) values (?,?,?,?,?,?)";
        jdbctemplate.update(sql,c.getNombre(),c.getApellidos(),c.getDocumentos(),c.getDireccion(),c.getTelefono(),c.getEmail());
    }
    public List buscar(int id){
        String sql="select * from clientes where id="+ id;
        datos=jdbctemplate.queryForList(sql);
        return datos;
    }
    public void actualizar (Clientes c){
        String sql="update clientes set "
                + "nombre=?,apellidos=?,documento=?,direccion=?,telefono=?,email=?";
                jdbctemplate.update(sql,c.getNombre(),c.getApellidos(),c.getDocumentos(),c.getDireccion(),c.getTelefono(),c.getEmail());
    }
    
    public void eliminar (int id){
        try{
            String sql = "delete from clientes where id=" + id;
            this.jdbctemplate.update(sql);
        } catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
