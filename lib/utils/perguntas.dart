import 'package:projeto_perguntas/types.dart';

final List<Pergunta> perguntas = [
  Pergunta(
    texto: 'O que é o Flutter?',
    respostas: [
      Resposta(texto: 'Um framework da Apple para apps iOS', pontuacao: 0),
      Resposta(
        texto: 'Um framework da Google para desenvolvimento multiplataforma',
        pontuacao: 1,
      ),
      Resposta(texto: 'Uma linguagem de programação', pontuacao: 0),
    ],
  ),
  Pergunta(
    texto: 'Qual linguagem é usada para desenvolver aplicativos Flutter?',
    respostas: [
      Resposta(texto: 'JavaScript', pontuacao: 0),
      Resposta(texto: 'Dart', pontuacao: 1),
      Resposta(texto: 'Kotlin', pontuacao: 0),
      Resposta(texto: 'Swift', pontuacao: 0),
    ],
  ),
  Pergunta(
    texto: 'Qual widget é comumente usado para layout em coluna no Flutter?',
    respostas: [
      Resposta(texto: 'Row', pontuacao: 0),
      Resposta(texto: 'Column', pontuacao: 1),
      Resposta(texto: 'ListView', pontuacao: 0),
      Resposta(texto: 'Stack', pontuacao: 0),
    ],
  ),
  Pergunta(
    texto: 'O que é um “StatefulWidget” em Flutter?',
    respostas: [
      Resposta(texto: 'Um widget que nunca muda', pontuacao: 0),
      Resposta(
        texto:
            'Um widget que pode armazenar estado e ser reconstruído dinamicamente',
        pontuacao: 1,
      ),
      Resposta(texto: 'Um tipo de animação', pontuacao: 0),
    ],
  ),
  Pergunta(
    texto: 'Para que serve o comando "flutter pub get"?',
    respostas: [
      Resposta(texto: 'Compilar o código', pontuacao: 0),
      Resposta(
        texto: 'Instalar dependências definidas no pubspec.yaml',
        pontuacao: 1,
      ),
      Resposta(texto: 'Atualizar o SDK', pontuacao: 0),
    ],
  ),
];
