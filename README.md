<h1 align="center"></h1>

<div align="center">
  <a href="http://nestjs.com/" target="_blank">
    <img src="https://nestjs.com/img/logo_text.svg" width="150" alt="Nest Logo" />
  </a>
</div>

<h3 align="center"> Quiz-Backend (under development)  </h3>

<div align="center">
  <a href="https://nestjs.com" target="_blank">
    <img src="https://img.shields.io/badge/built%20with-NestJs-red.svg" alt="Built with NestJS">
  </a>
</div>

### Installation
After you clone the repository
> Import database.sql to your postgres DB
> Edit the database config in ormconfig.json:
```typescript
// ./ormconfig.json
{
    "type": "postgres",
    "host": "localhost",
    "port": 5432,
    "username": "postgres",
    "password": "",
    "database": "quizApp",
    "entities": ["dist/**/*.entity.js"],
    "synchronize": true
  }
```
> npm install
> npm run start
> swagger : localhost:3000/api
> url : localhost:3000/api/v1

### About Quiz-Backend

Quiz Backend Built with NestJS  offers webservices to <a href="https://github.com/AyubTouba/quiz-frontend" target="_blank">Quiz-Frontend </a>
for education purpose, it still under development.

### To Do

- [] Soon...
