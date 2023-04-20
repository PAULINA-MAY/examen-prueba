import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.horizontal,
    required this.vertical,
    required this.function,
    required this.label
  }) : super(key: key);
  final double horizontal;
  final double vertical;
  final Function function;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF176BFC)),
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80))),
      ),
      onPressed: () {
        function();
      },
      child:  Text(
        label,
        style: const  TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}