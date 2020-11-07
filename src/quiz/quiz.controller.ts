import { Controller, Get, Param, Query } from '@nestjs/common';
import { Quiz } from './entities/quiz.entity';
import { QuizService } from './quiz.service';

@Controller('quiz')
export class QuizController {

    constructor(private readonly quizService: QuizService){}

    @Get("")
    getAll(@Query() query): Promise<Quiz[]> {
        return this.quizService.findAll(query);
    }

    @Get(":id")
    async getbyId(@Param() params): Promise<Quiz> {
        return this.quizService.findById(params.id);
    }
}
