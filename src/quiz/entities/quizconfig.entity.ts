import { Entity, PrimaryGeneratedColumn, Column } from "typeorm";

@Entity()
export class QuizConfig {
    
    @PrimaryGeneratedColumn()
    config_id: number;

    @Column()
    allowBack: boolean;

    @Column()
    allowReview: boolean;

    @Column()
    autoMove: boolean;

    @Column()
    duration: boolean;

    @Column()
    pageSize: boolean;

    @Column()
    requiredAll: boolean;

    @Column()
    richText: boolean;

    @Column()
    shuffleQuestions: boolean;

    @Column()
    shuffleOptions: boolean;

    @Column()
    showClock: boolean;

    @Column()
    showPager: boolean;

  

}