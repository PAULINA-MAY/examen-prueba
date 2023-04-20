import 'package:flutter/material.dart';

class TitleEditable extends StatelessWidget {
  const TitleEditable({
     Key? key,
     required this.titulo
  }): super(key: key);
    final String titulo;

  @override
  Widget build(BuildContext context) {
    return  Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text( titulo,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )));
  }
}

