import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import 'package:projeto_perguntas/opcao.dart';
import 'package:projeto_perguntas/types.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    super.key,
    required this.pergunta,
    required this.onResponder,
  });

  final Pergunta pergunta;
  final void Function(Resposta) onResponder;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Questao(texto: pergunta.texto),
        ...pergunta.respostas.map(
          (resposta) => Opcao(
            texto: resposta.texto,
            onPressed: () => onResponder(resposta),
          ),
        ),
      ],
    );
  }
}
