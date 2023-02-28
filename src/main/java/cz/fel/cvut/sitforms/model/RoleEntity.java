package cz.fel.cvut.sitforms.model;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class RoleEntity {
    @Id
    private Long id;
    private String name;
}
