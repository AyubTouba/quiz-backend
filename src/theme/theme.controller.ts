import { Controller, Get } from '@nestjs/common';
import { Itheme } from './interfaces/theme.interface';
import { ThemesService } from './theme.service';

@Controller('theme')
export class ThemeController {

    constructor(private readonly themesService: ThemesService){}
  @Get()
  async findAll(): Promise<Itheme[]> {
    return this.themesService.findAll();
  }
}
