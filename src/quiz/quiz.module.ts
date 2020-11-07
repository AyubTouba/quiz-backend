import { Module } from '@nestjs/common';
import { QuizService } from './quiz.service';
import { QuizController } from './quiz.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { QuizRepository } from './repositories/quiz.repository';
import { Theme } from 'src/theme/theme.entity';

@Module({
  imports: [TypeOrmModule.forFeature([QuizRepository,Theme])],
  providers: [QuizService],
  controllers: [QuizController]
})
export class QuizModule {}
