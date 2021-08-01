package company.services;

import company.domain.Student;

import java.util.List;

public interface StudentService {
    public int addStudent(Student student);
    public List<Student> findStudents();
}
