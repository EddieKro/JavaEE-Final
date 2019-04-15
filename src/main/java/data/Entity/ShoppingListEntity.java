package data.Entity;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "shoppingList")
@Transactional
public class ShoppingListEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "statusTransactionId")
    private Integer id;

    @Column(name = "statusTransactionDate")
    private Date date;

    @ManyToOne
    @JoinColumn(name = "statisId")
    private StatusEntity status;

    @Column(name = "sum")
    private Double price;

    @Column(name = "success")
    private Boolean success;
}
