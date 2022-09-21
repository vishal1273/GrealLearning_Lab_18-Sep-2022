package com.gl.stdmgmt.dao;

import java.util.List;

import com.gl.stdmgmt.model.Student;

public interface StudentDao {
	public void saveStudent(Student student);
	public Student findById(int id);
	public List<Student>findAll();
	public void deleteStudent(int id);
	public List<Student>search(String name,String department);

}
