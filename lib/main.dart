import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'package:projeto_perguntas/types.dart';
import 'package:projeto_perguntas/utils/perguntas.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Pergunta> _perguntas = List.from(perguntas);

  bool get temMaisPerguntas {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(Resposta resposta) {
    if (!temMaisPerguntas) return;

    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += resposta.pontuacao;
    });
  }

  void _reiniciar() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;

      _perguntas.shuffle();
      for (var pergunta in _perguntas) {
        pergunta.respostas.shuffle();
      }
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
              ? Questionario(
                  pergunta: _perguntas[_perguntaSelecionada],
                  onResponder: _responder,
                )
              : Resultado(
                  pontuacaoFinal: _pontuacaoTotal,
                  totalPerguntas: _perguntas.length,
                  onReiniciar: _reiniciar,
                ),
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
