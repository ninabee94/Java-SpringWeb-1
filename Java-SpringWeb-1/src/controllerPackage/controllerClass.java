package controllerPackage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controllerClass {
	
	@RequestMapping("/page1")
    public ModelAndView page1() {
       String text = "This message isfrom controllerClass<br><br>";
       return new ModelAndView("page1", "message", text);
    }


}
