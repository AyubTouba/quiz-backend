import {Entity, PrimaryGeneratedColumn, Column, OneToMany} from "typeorm";
import { Quiz } from "../quiz/entities/quiz.entity";

@Entity()
export class Theme {

    @PrimaryGeneratedColumn()
    theme_id: number;

    @Column({unique: true})
    slug: string;

    @Column()
    title: string;

    @Column({nullable: true})
    logo: string;

    @Column("text")
    description: string;

    @OneToMany(type => Quiz, quiz => quiz.theme)
    quizes: Quiz[];
    
}