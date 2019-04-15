package data.Entity;

import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Transactional
@Table(name = "transaction")
public class TransactionEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idtransaction")
    private Integer id;

    @Column(name = "transactionDate")
    private Date date;

    @Column(name ="transactonCity")
    private String city;
}
