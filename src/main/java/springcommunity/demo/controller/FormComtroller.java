package springcommunity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import springcommunity.demo.bean.Student;

@Controller
@RequestMapping(value="/")
public class FormComtroller {
	 /* Tạo một bean Student sau đó dùng Model và ModelAttribute kết hợp Spring form 
	  ở dưới JSP để hiện thị thông tin người dùng gửi từ client */
	  @RequestMapping(value="form", method=RequestMethod.GET)
       public String form(Model model){
    	          Student student = new Student();
    	          model.addAttribute("student", student);
    	          return "form";
       }
	  
	  
	  @RequestMapping(value="form", method=RequestMethod.POST)
       public String handleForm(@ModelAttribute(value="student") Student newstudent, Model model){
    	         model.addAttribute("newstudent", newstudent);
    	         return "form";
       }
}
