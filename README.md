# QUIZ APP

<img src="https://img.shields.io/static/v1?label=flutter&message=framework&color=green&style=for-the-badge&logo=FLUTTER"/>

![aps](./assets/Cover%20page1.png)

## Tabela de conteúdo

- [Overview](#overview)
- [Como foi desenvolvido](#como-foi-desenvolvido)
- [Linguagens e Techs utilizadas](#linguagens-e-techs-utilizadas)
- [Funcionamento](#funcionamento)
- [Criado por](#criado-por)



## Overview

O desafio foi desenvolver um jogo Quiz, onde o usuário pudesse responder conforme seleção de categoria. A quantidade de perguntas são conforme cadastradas no arquivo <code>mocks/categories</code>. Podem ser adicionados infinitas categorias e perguntas.

<br/>
Os usuários podem:

:trophy: - Selecionar categorias para responder
:trophy: - Responder questões
:trophy: - Conferir a quantidade de questões
:trophy: - Visualizar a quantidade de acertos

## Como foi desenvolvido

### 1. Criado um mockup pelo figma para seguir durante desenvolvimento.

<br/>

#### Cores principais do jogo:

- #542EEE
- #785AF3
- #FFD749
<br/>

#### Tipografia:

- Inter (Bold, Regular)

![figma](./assets/figma.png)

## Linguagens e Techs utilizadas :books:

- [Flutter](https://flutter.dev/)

## Funcionamento

Para rodar em sua máquina, use o <code>flutter run</code>
<br />
Código-fonte em <code>lib</code>
<br />
Para adicionar novos quizzes, podemos adicionar JSON em <code>mocks/categories</code>
<br/>

```
      {
        "title": "TECNOLOGIA",
        "quiz": [
          {
        "question": "Machine Learning é",
        "answers": [
          "DESENVOLVIMENTO WEB",
          "APRENDIZADO DE MÁQUINA",
          "DESIGN",
          "DESENVOLVIMENTO DE JOGOS"
        ],
        "correct_answer": 2,
      },
```
<br/>

![visualizer](./assets/viz.gif)

## Criado por

- Linkedin - [Willian Henkel](https://www.linkedin.com/in/willian-henkel-b652b3205/)
<br />
- Email - willianhenkel@gmail.com


