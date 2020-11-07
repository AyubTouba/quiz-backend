import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger';
async function bootstrap() {
  const app = await NestFactory.create(AppModule, { cors: true });

      const options = new DocumentBuilder()
      .setTitle('Quiz Api ')
      .setDescription('The Quiz API description')
      .setVersion('1.0')
      .build();
    const document = SwaggerModule.createDocument(app, options);
    SwaggerModule.setup('api', app, document);

    app.setGlobalPrefix('api/v1');
  await app.listen(3000);
}
bootstrap();
