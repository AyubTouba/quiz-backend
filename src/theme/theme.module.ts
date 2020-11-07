import { Module } from '@nestjs/common';
import { ThemesService } from './theme.service';
import { ThemeController } from './theme.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ThemeRepository } from './theme.repository';
import { Quiz } from 'src/quiz/entities/quiz.entity';
@Module({
  imports: [TypeOrmModule.forFeature([ThemeRepository,Quiz])],
  providers: [ThemesService],
  controllers: [ThemeController]
})
export class ThemeModule {}
