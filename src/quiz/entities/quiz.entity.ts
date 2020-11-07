import { Entity, PrimaryGeneratedColumn, Column, OneToOne, JoinColumn, ManyToOne, OneToMany } from "typeorm";
import { QuizConfig } from "./quizconfig.entity";
import { Question } from "./question.entity";
import { Theme } from "../../theme/theme.entity";
import { ApiProperty } from '@nestjs/swagger';

@Entity()
export class Quiz {

    @ApiProperty()
    @PrimaryGeneratedColumn()
    quiz_id: number;

    @ApiProperty()
    @Column()
    name: string;

    @ApiProperty()
    @Column("text")
    description: string;

    @ApiProperty({ type: () => QuizConfig })
    @OneToOne(type => QuizConfig)
    @JoinColumn()
    quizConfig: QuizConfig;

    @ApiProperty({ type: () => Theme })
    @ManyToOne(type => Theme, theme => theme.quizes)
    theme: Theme;

     @ApiProperty({ type: () => Question })
    @OneToMany(type => Question, question => question.quiz)
    questions: Question[];
}