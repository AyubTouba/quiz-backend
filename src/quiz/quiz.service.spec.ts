import { Test, TestingModule } from '@nestjs/testing';
import { QuizService } from './quiz.service';
import { QuizRepository } from './repositories/quiz.repository';

const mockQuizRepository = () => ({
    getAll: jest.fn(),
    getById:jest.fn(),
})
describe('QuizService', () => {
  let quizService: QuizService;
  let quizRepository;
  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [QuizService,
        { provide : QuizRepository, useFactory : mockQuizRepository }
      ],
    }).compile();

    quizService = await module.get<QuizService>(QuizService);
    quizRepository =await module.get<QuizRepository>(QuizRepository);
  });

            describe("findAll", async () => {

              it("Get All Quizes from database", async() => {
                  const query:any = {};
                  const data =[
                    {"name": "Angular 8 (Begginer)", "description": "Bla Bla Bla" },
                    {"name": "PHP (begginer)","description": "Bla Bla Bla"}]
                  ;
                  quizRepository.getAll.mockResolvedValue(data);

                  const result = await quizService.findAll(query);

                  expect(result).toEqual(data);
              });
            });

            describe("findById", async() => {

              it("Calls QuizRepository.getById and succesffuly retrieve and return quiz", async() => {
                  const data =[{"name": "Angular 8 (Begginer)", "description": "Bla Bla Bla" }];
                  const id = 1;
                  quizRepository.getById.mockResolvedValue(data);

                  const result = await quizService.findById(id);

                  expect(result).toEqual(data);
              });

              it("Calls QuizRepository.getById and throw error as quiz is not found", async() => {
                const id = 1;
                quizRepository.getById.mockResolvedValue("");

                expect(quizService.findById(id)).rejects.toThrow();
            });
            });
});
