package cz.fel.cvut.sitforms.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import java.util.List;

@Data
@Entity
public class GroupEntity {

    @Id
    private Long id;
    private String name;
    @ManyToOne
    private UserEntity author;
    @ManyToMany
    private List<FormEntity> formEntityList;
    @ManyToMany
    private List<UserEntity> userEntityList;
}
