import { Injectable, NotFoundException } from '@nestjs/common';
import { QuizRepository } from './repositories/quiz.repository';
import { InjectRepository } from '@nestjs/typeorm';
import { Quiz } from './entities/quiz.entity';

@Injectable()
export class QuizService {

    constructor(
        @InjectRepository(QuizRepository)
        private readonly quizRepository: QuizRepository,
      ) {}
    
      async findAll(query): Promise<Quiz[]> {
        return  await this.quizRepository.getAll(query);
      }

      async findById(id:number): Promise<Quiz> {
        const result = await  this.quizRepository.getById(id);

         if(!result)
         throw new NotFoundException(`Quiz with ID ${id} not found`);

         return result;
      }
}
