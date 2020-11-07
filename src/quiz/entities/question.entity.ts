import { Entity, PrimaryGeneratedColumn, Column, ManyToOne, OneToMany } from "typeorm";
import { Quiz } from "./quiz.entity";
import { Option } from "./option.entity";

@Entity()
export class Question {

    @PrimaryGeneratedColumn()
    question_id: number;
    
    @Column()
    name: string;

    @Column()
    questionTypeId: number;

    @Column()
    answered: boolean;

    @Column()
    state: boolean;


    @ManyToOne(type => Quiz, quiz => quiz.questions)
    quiz: Quiz;

    @OneToMany(type => Option, options => options.question, {eager:true})
    options: Option[];
    

}