package org.example.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.ParameterNameAware;
import org.apache.struts2.interceptor.SessionAware;
import org.example.actions.beans.AlumnoBean;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class RegistroActions extends ActionSupport implements SessionAware, ParameterNameAware {

    private AlumnoBean alumno;
    private AlumnoBean datos;
    private String id;
    private Map<String, Object> userSession;


    @Override
    public void setSession(Map<String, Object> Session) {this.userSession = Session; }



    @Override
    public boolean acceptableParameterName(String parameterName) {
        boolean allowedParameterName = true;

        if ( parameterName.contains("session") || parameterName.contains("request") ) {
            allowedParameterName = false;
        }

        return allowedParameterName;
    }

    public String iniciar() throws Exception{
        return SUCCESS;
    }

    public String registro() throws Exception {
        alumno = new AlumnoBean();
        return SUCCESS;
    }

    @Override
    public String execute() throws Exception {
        id = alumno.getDni();
        userSession.put(id,alumno);
        return SUCCESS;
    }

    public String acceder() throws Exception{
        if (userSession.get(id) == null) {
            addActionError("Debes registrarte para poder acceder.");
            return INPUT;
        } else{
            datos =(AlumnoBean) userSession.get(id);
            return SUCCESS;
        }
    }

    public AlumnoBean getAlumno() {return alumno;}
    public void setAlumno(AlumnoBean alumno) { this.alumno = alumno;}

    public AlumnoBean getDatos() {return datos;}
    public void setDatos(AlumnoBean datos) {this.datos = datos;}

    public String getId() {return id;}
    public void setId(String id) {this.id = id;}

    public List<String> getListaCursos() {
        List<String> listaCursos = new ArrayList<>();
        listaCursos.add("Python");
        listaCursos.add("Java");
        listaCursos.add("Javascript");
        return listaCursos;
    }
}

