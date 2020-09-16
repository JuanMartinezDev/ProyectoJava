/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.ClienteBL;
import Model.Clientes;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
 
/**
 *
 * @author USUARIO
 */
public class ClienteController {
    ModelAndView mav=new ModelAndView();
    ClienteBL clienteBL=new ClienteBL();
    int id;
    List datos;
    
    @RequestMapping("indexCliente.htm")
    public ModelAndView Listar(){
        datos=clienteBL.listar();
        mav.addObject("lsCliente",datos);
        mav.setViewName("indexCliente");
        return mav;
    }
    
    @RequestMapping(value="agregarCliente.htm",method=RequestMethod.GET)
    public ModelAndView agregar(){
        mav.addObject(new Clientes());
        mav.setViewName("agregarCliente");
        return mav;
    }
    
    @RequestMapping(value="agregarCliente.htm",method=RequestMethod.POST)
    public ModelAndView Agregar(Clientes c){
        clienteBL.insertar(c);
        return new ModelAndView("redirect:indexCliente.htm");
    }
        
    @RequestMapping(value="editarCliente.htm",method=RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("id"));
        datos=clienteBL.buscar(id);
        mav.addObject("cliente",datos);
        mav.setViewName("editarCliente");
        return mav;
    }
    
    @RequestMapping(value="editarCliente.htm",method=RequestMethod.POST)
    public ModelAndView Editar(Clientes c) {
        clienteBL.actualizar(c);
        return new ModelAndView("redirect:/indexCliente.htm");
    }
    
       @RequestMapping("deleteCliente.htm")
        public ModelAndView Delete (HttpServletRequest request) {
         id = Integer.parseInt(request.getParameter("id"));
         clienteBL.eliminar(id);
         return new ModelAndView("redirect:/indexCliente.htm");
     }
}
