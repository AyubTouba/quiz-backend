import { Repository, EntityRepository } from "typeorm";
import { Quiz } from "../entities/quiz.entity";

@EntityRepository(Quiz)
export class QuizRepository extends Repository<Quiz> {

    getAll(query): Promise<Quiz[]> {
        let qr:any = {};

        if("theme_id" in query)
        qr = {...qr,theme: query.theme_id};

        return this.find({
            where:[qr],
            select:['quiz_id','name','description']
        });
    }

    getById(id:number): Promise<Quiz> {
       return  this.createQueryBuilder('quiz')
        .select(["quiz.quiz_id","quiz.name","quiz.description","theme.title"])
        .leftJoin("quiz.theme", "theme")
        .leftJoinAndSelect("quiz.questions", "Question")
        .leftJoinAndSelect("Question.options", "Option")
        .where("quiz.quiz_id = :id", { id: id })
        .getOne();
    }
}
