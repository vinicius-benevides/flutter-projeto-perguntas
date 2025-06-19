class Pergunta {
  final String texto;
  final List<Resposta> respostas;

  Pergunta({required this.texto, required this.respostas});
}

class Resposta {
  final String texto;
  final int pontuacao;

  Resposta({required this.texto, this.pontuacao = 0});
}
