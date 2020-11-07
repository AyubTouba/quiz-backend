import { Test, TestingModule } from '@nestjs/testing';
import { ThemesService } from './theme.service';
import { ThemeRepository } from './theme.repository';

const mockThemeRepository = () => ({
  find: jest.fn(),
});

describe('ThemeService', () => {
  let themeService: ThemesService;
  let themeRepository;
  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ThemesService,
      { provide: ThemeRepository,useFactory: mockThemeRepository}
      ],
    }).compile();

    themeService =await  module.get<ThemesService>(ThemesService);
    themeRepository = await module.get<ThemeRepository>(ThemeRepository);
  });

  describe("findAll",() => {
          
      it("Get All themes from Database", async() => {
          const data = [{
            filter_id : 1,
            slug : "test_test",
            title : "Test",
            description: "Bla bla",
            logo: "#"
          }];
          themeRepository.find.mockResolvedValue(data);

          const result = await themeService.findAll();
        
          expect(result).toEqual(data);
      });
  });
});
