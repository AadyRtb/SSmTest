package com.example.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class Student {
    private int idstudent;
    private String studentname;
    private int iddormitory;
    private String classroom;


    public int getIdstudent() {
        return idstudent;
    }

    public void setIdstudent(int idstudent) {
        this.idstudent = idstudent;
    }

    public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    public int getIddormitory() {
        return iddormitory;
    }

    public void setIddormitory(int iddormitory) {
        this.iddormitory = iddormitory;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }

    @Override
    public String toString() {
        return "Student{" +
                "idstudent='" + idstudent + '\'' +
                ", studentname='" + studentname + '\'' +
                ", iddormitory=" + iddormitory +
                ", classroom='" + classroom + '\'' +
                '}';
    }
}
