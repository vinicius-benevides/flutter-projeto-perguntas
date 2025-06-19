import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/resposta.dart';
import 'package:projeto_perguntas/resultado.dart';

main() => runApp(PerguntaApp());

class Pergunta {
  final String texto;
  final List<String> respostas;

  Pergunta({required this.texto, required this.respostas});
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Pergunta> _perguntas = [
    Pergunta(
      texto: 'Qual é a sua cor favorita?',
      respostas: const ['Azul', 'Verde', 'Vermelho'],
    ),
    Pergunta(
      texto: 'Qual é o seu animal favorito?',
      respostas: const ['Cachorro', 'Gato', 'Pássaro'],
    ),
    Pergunta(
      texto: 'Qual é o seu esporte favorito?',
      respostas: const ['Futebol', 'Basquete', 'Vôlei', 'Natação'],
    ),
  ];

  bool get temMaisPerguntas {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder() {
    if (!temMaisPerguntas) return;

    setState(() {
      _perguntaSelecionada++;
    });
  }

  void _reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(16.0),
          child: temMaisPerguntas
              ? Column(
                  spacing: 10,
                  children: [
                    Questao(texto: _perguntas[_perguntaSelecionada].texto),
                    ..._perguntas[_perguntaSelecionada].respostas.map(
                      (texto) => Resposta(texto: texto, onPressed: _responder),
                    ),
                  ],
                )
              : Resultado(onReiniciar: _reiniciar),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<StatefulWidget> createState() => _PerguntaAppState();
}
