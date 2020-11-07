import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Theme } from './theme.entity';
import { ThemeRepository } from './theme.repository';

@Injectable()
export class ThemesService {
    constructor(
        @InjectRepository(ThemeRepository)
        private readonly themeRepository: Repository<Theme>,
      ) {}
    
      findAll(): Promise<Theme[]> {
        return this.themeRepository.find();
      }
}
