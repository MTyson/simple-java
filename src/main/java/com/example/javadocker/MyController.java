package com.example.javadocker;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;

@Controller
public class MyController {
  @RequestMapping(value="/go", produces="text/plain")
  @ResponseBody
  public String foo() {
    return "Greetings";
  }
}
