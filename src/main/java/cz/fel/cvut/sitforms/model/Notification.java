package cz.fel.cvut.sitforms.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Data
public class Notification {
    @Id
    private Long id;
    private String text;
    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity notifiedUser;
}
