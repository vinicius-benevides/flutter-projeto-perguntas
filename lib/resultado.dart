import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({
    super.key,
    required this.onReiniciar,
    required this.pontuacaoFinal,
  });

  final int pontuacaoFinal;
  final void Function() onReiniciar;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Text(
          'Você completou todas as perguntas!',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          'Pontuação: $pontuacaoFinal',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: onReiniciar,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            textStyle: TextStyle(fontSize: 16),
          ),
          child: Text('Reiniciar'),
        ),
      ],
    );
  }
}
