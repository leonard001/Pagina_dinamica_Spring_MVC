
package Controller;

import Config.Conectar;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerContact {
    
    Conectar con = new Conectar();
    ModelAndView mav = new ModelAndView();
    
    
    @RequestMapping(value = "/contactanos", method = RequestMethod.GET)
    public String contactanos(){
        return "contactanos";
    }
    
}