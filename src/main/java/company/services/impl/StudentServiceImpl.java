package company.services.impl;

import company.dao.StudentDao;
import company.domain.Student;
import company.services.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {
    //引入类型自动注入
    @Resource
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        System.out.println("StudentServiceImpl student:"+student);
        int num = studentDao.insertStudent(student);
        return num;
    }

    @Override
    public List<Student> findStudents() {
        return studentDao.selectStudents();
    }
}
