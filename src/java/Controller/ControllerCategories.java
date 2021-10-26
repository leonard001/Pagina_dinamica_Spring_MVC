
package Controller;

import Config.Conectar;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerCategories {
    
    Conectar con = new Conectar();
    ModelAndView mav = new ModelAndView();
    
    
    @RequestMapping(value = "/categorias", method = RequestMethod.GET)
    public String categorias(){
        return "categorias";
    }
  
}