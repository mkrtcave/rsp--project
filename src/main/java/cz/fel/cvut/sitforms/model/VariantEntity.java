package cz.fel.cvut.sitforms.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
public class VariantEntity {
    @Id
    private Long id;
    private String name;
    private int clickNumbers;
    @ManyToOne
    @JoinColumn(name="questionId", nullable=false)
    private QuestionEntity question;
    @OneToMany(mappedBy = "variant")
    private List<AnswerEntity> answerEntityList;
}
