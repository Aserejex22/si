package mx.edu.utez.secondapp.models.user;

import mx.edu.utez.secondapp.models.role.Role;

public class User {

    private Long id;
    private String username;
    private String passsword;
    private int tokken;
    private int status;

    private Person person;
    private Role role;

    public User() {
    }

    public User(Long id, String username, String passsword, int tokken, int status, Person person, Role role) {
        this.id = id;
        this.username = username;
        this.passsword = passsword;
        this.tokken = tokken;
        this.status = status;
        this.person = person;
        this.role = role;
    }

    public Long getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPasssword() {
        return passsword;
    }

    public int getTokken() {
        return tokken;
    }

    private String getStatus(){
        return status == 1 ?"ACTIVO" : "INACTIVO";
    }

    public Person getPerson() {
        return person;
    }

    public Role getRole() {
        return role;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPasssword(String passsword) {
        this.passsword = passsword;
    }

    public void setTokken(int tokken) {
        this.tokken = tokken;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
