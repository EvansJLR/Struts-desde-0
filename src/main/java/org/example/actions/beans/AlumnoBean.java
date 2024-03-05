package org.example.actions.beans;

import java.util.Date;

public class AlumnoBean {

    private String nombre;
    private String apellidos;
    private String dni;
    private String direccion;
    private String poblacion;
    private String email;
    private int edad;
    private String curso;
    private Date fechaInicio;
    private Date fechaFin;

    public String getNombre() {return nombre;}
    public void setNombre(String nombre) {this.nombre = nombre;}

    public String getApellidos() {return apellidos;}
    public void setApellidos(String apellidos) {this.apellidos = apellidos;}

    public String getDni() {return dni;}
    public void setDni(String dni) {this.dni = dni;}

    public String getDireccion() {return direccion;}
    public void setDireccion(String direccion) {this.direccion = direccion;}

    public String getPoblacion() {return poblacion;}
    public void setPoblacion(String poblacion) {this.poblacion = poblacion;}

    public String getEmail() {return email;}
    public void setEmail(String email) {this.email = email;}

    public int getEdad() {return edad;}
    public void setEdad(int edad) {this.edad = edad;}

    public String getCurso() {return curso;}
    public void setCurso(String curso) {this.curso = curso;}

    public Date getFechaInicio() {return fechaInicio;}
    public void setFechaInicio(Date fechaInicio) {this.fechaInicio = fechaInicio;}

    public Date getFechaFin() {return fechaFin;}

    public void setFechaFin(Date fechaFin) {this.fechaFin = fechaFin;}
}
