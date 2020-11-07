import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ThemeModule } from './theme/theme.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Connection } from 'typeorm';
import { QuizModule } from './quiz/quiz.module';
@Module({
  imports: [TypeOrmModule.forRoot(),ThemeModule, QuizModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {
  constructor(private readonly connection: Connection) {}
}
