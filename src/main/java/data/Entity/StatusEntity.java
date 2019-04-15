package data.Entity;

import javax.persistence.*;

@Entity
@Table(name = "userStatus")
public class StatusEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "userStatusId")
    private Integer id;

    @Column(name = "status")
    private String status;

    @Column(name = "userRequestsAmount")
    private Integer reqAmount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getReqAmount() {
        return reqAmount;
    }

    public void setReqAmount(Integer reqAmount) {
        this.reqAmount = reqAmount;
    }
}
