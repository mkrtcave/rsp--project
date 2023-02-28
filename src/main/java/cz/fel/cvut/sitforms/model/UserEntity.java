package cz.fel.cvut.sitforms.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class UserEntity {

    @Id
    private Long id;
    private String email;
    private String password;
    @ManyToOne
    @JoinColumn(name="user_id", nullable=false)
    private RoleEntity roleEntity;
    private String name;
    private String surname;
    @OneToMany(mappedBy="user")
    private List<FormEntity> myFormEntities;
    @OneToMany(mappedBy = "notifiedUser")
    private List<Notification> notifications;
    @ManyToMany
    private List<FormEntity> assignedFormEntities;
    @ManyToMany
    private List<GroupEntity> createdGroupEntities;
}
