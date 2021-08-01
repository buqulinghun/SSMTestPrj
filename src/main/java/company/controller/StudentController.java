package company.controller;

import company.domain.Student;
import company.services.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping(value = "/student")
public class StudentController {
    @Resource
    private StudentService service;

    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student) {
        System.out.println("controller addStudent:"+student);
        ModelAndView mv = new ModelAndView();
        String tips = "注册失败";
        int num = service.addStudent(student);
        if (num > 0) {
            tips = "学生【"+student.getName()+"] 注册成功";
        }
        mv.addObject("tips", tips);
        mv.setViewName("addStudentResult");
        return mv;
    }

    @RequestMapping("/queryStudent.do")
    @ResponseBody
    public List<Student> queryStudentInfos() {
        System.out.println("queryStudentInfos");
        List<Student> students = service.findStudents();
        return students;
    }
}
