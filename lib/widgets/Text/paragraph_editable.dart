import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  const ParagraphText({
    Key? key,
    required this.parrafo
  }) : super(key: key);
  final String parrafo;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(32),
      child: Text(
       parrafo,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
