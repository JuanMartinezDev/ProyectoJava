/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Business.ClaseMaderaBL;
import Model.ClaseMadera;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author USUARIO
 */
public class ClaseMaderaController {
        ModelAndView mav=new ModelAndView();
        ClaseMaderaBL clasemaderaBL=new ClaseMaderaBL();
        int id;
        List datos;

        @RequestMapping("indexClaseMadera.htm")
        public ModelAndView Listar() {
            datos = clasemaderaBL.listar();
            mav.addObject("lsClaseMadera", datos);
            mav.setViewName("indexClaseMadera");
            return mav;
        }

        @RequestMapping(value = "agregarClaseMadera.htm", method = RequestMethod.GET)
        public ModelAndView agregar() {
            mav.addObject(new ClaseMadera());
            mav.setViewName("agregarClaseMadera");
            return mav;
        }

        @RequestMapping(value = "indexClaseMadera.htm", method = RequestMethod.POST)
        public ModelAndView Agregar(ClaseMadera cl) {
            clasemaderaBL.insertar(cl);
            return new ModelAndView("redirect:indexClaseMadera.htm");
        }

        @RequestMapping(value = "editarClaseMadera.htm", method = RequestMethod.GET)
        public ModelAndView Editar(HttpServletRequest request) {
            id = Integer.parseInt(request.getParameter("id"));
            datos = clasemaderaBL.buscar(id);
            mav.addObject("clasemadera", datos);
            mav.setViewName("editarClaseMadera");
            return mav;
        }

        @RequestMapping(value = "editarClaseMadera.htm", method = RequestMethod.POST)
        public ModelAndView Editar(ClaseMadera cl) {
            clasemaderaBL.actualizar(cl);
            return new ModelAndView("redirect:/indexClaseMadera.htm");
        }

        @RequestMapping("deleteClaseMadera.htm")
        public ModelAndView Delete(HttpServletRequest request) {
            id = Integer.parseInt(request.getParameter("id"));
            clasemaderaBL.eliminar(id);
            return new ModelAndView("redirect:/indexClaseMadera.htm");
        }
    }
