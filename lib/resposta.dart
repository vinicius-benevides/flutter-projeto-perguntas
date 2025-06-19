import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({super.key, required this.texto, required this.onPressed});

  final String texto;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.only(
            top: 4.0,
            bottom: 4.0,
            left: 36.0,
            right: 36.0,
          ),
          textStyle: const TextStyle(fontSize: 12),
        ),
        onPressed: onPressed,
        child: Text(texto),
      ),
    );
  }
}
