package data.Entity;

import javax.persistence.*;
import java.sql.Date;


@Entity
@Table(name = "User")
public class UserEntity {
    public UserEntity() {
    }

    public UserEntity(StatusEntity status, String login, String password, Date date) {
        this.status = status;
        this.login = login;
        this.password = password;
        this.date = date;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idUser")
    private Integer id;

    @ManyToOne
    @JoinColumn(name="userStatusId")
    private StatusEntity status;

    @Column(name = "login")
    private String login;

    @Column(name = "password")
    private String password;

    @Column(name = "changeDate")
    private Date date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public StatusEntity getStatus() {
        return status;
    }

    public void setStatus(StatusEntity status) {
        this.status = status;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "UserEntity{" +
                "id=" + id +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public UserEntity(String login, String password) {
        this.login = login;
        this.password = password;
    }
}
