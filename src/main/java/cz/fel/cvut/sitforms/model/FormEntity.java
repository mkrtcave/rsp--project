package cz.fel.cvut.sitforms.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class FormEntity {
    @Id
    private Long id;
    @ManyToOne
    @JoinColumn(name="user_id", nullable=false)
    private UserEntity user;
    @Enumerated(EnumType.STRING)
    private FormType formType;
    @ManyToMany
    private List<GroupEntity> formGroupEntities;
    @ManyToMany
    private List<UserEntity> formUserEntities;
    private int viewsCount;
}
