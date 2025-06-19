import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({
    super.key,
    required this.onReiniciar,
    required this.pontuacaoFinal,
    required this.totalPerguntas,
  });

  final int pontuacaoFinal;
  final int totalPerguntas;
  final void Function() onReiniciar;

  @override
  Widget build(BuildContext context) {
    final percentual = (pontuacaoFinal / totalPerguntas * 100).round();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Parabéns!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Text(
          'Você concluiu o quiz com $percentual% de acertos.',
          style: const TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 24),
        ElevatedButton.icon(
          onPressed: onReiniciar,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade600,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            textStyle: const TextStyle(fontSize: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          icon: const Icon(Icons.restart_alt),
          label: const Text('Reiniciar Quiz'),
        ),
      ],
    );
  }
}
