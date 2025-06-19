import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questionario.dart';
import 'package:projeto_perguntas/resultado.dart';
import 'package:projeto_perguntas/types.dart';
import 'package:projeto_perguntas/utils/perguntas.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Pergunta> _perguntas = List.from(perguntas);

  bool get temMaisPerguntas => _perguntaSelecionada < _perguntas.length;

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
      title: 'Quiz Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade700),
        textTheme: const TextTheme(bodyMedium: TextStyle(fontFamily: 'Roboto')),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz Flutter',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue.shade700,
          foregroundColor: Colors.white,
        ),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: ScaleTransition(
                            scale: animation,
                            child: child,
                          ),
                        );
                      },
                  child: temMaisPerguntas
                      ? Questionario(
                          key: ValueKey(_perguntaSelecionada),
                          pergunta: _perguntas[_perguntaSelecionada],
                          onResponder: _responder,
                        )
                      : Resultado(
                          key: const ValueKey('resultado'),
                          pontuacaoFinal: _pontuacaoTotal,
                          totalPerguntas: _perguntas.length,
                          onReiniciar: _reiniciar,
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}
