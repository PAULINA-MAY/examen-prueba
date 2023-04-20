import 'package:flutter/material.dart';
import 'package:my_app_test/widgets/Button/customButton.dart';


class ButtonContent extends StatelessWidget {
  const ButtonContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 50,
      child: Center(
        child: CustomButton(
          function: () {},
          horizontal: 75,
          vertical: 15,
          label: 'Cerrar Sesion',
        ),
      ),
    );
  }
}