package cz.fel.cvut.sitforms.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class QuestionEntity {
    @Id
    private Long id;
    private String name;
    private String description;
    @Enumerated(EnumType.STRING)
    private QuestionType questionType;
    @OneToMany(mappedBy = "question")
    private List<VariantEntity> variantEntityList;
}
