import { Entity, PrimaryGeneratedColumn, Column, ManyToOne } from "typeorm";
import { Question } from "./question.entity";

@Entity()
export class Option {

    @PrimaryGeneratedColumn()
    option_id: number;

    @Column()
    name: string;

    @Column()
    isAnswer: boolean;

    @Column()
    selected: boolean;

    @Column()
    state:string;

    @ManyToOne(type => Question, question => question.options)
    question: Question;

}