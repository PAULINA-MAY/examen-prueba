import 'package:flutter/material.dart';

class PorcentageContent extends StatelessWidget {
  const PorcentageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: Colors.transparent,
              height: 120,
              width: 120,
              child: const Align(
                alignment: Alignment.center,
                child: ListTile(
                  title: Text(
                    '76%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text('Actividades Completadas',
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 120,
              width: 120,
              child: const Align(
                alignment: Alignment.center,
                child: ListTile(
                  title: Text(
                    '20%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text('Actividades Restantes',
                      textAlign: TextAlign.center),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 120,
              width: 120,
              child: const Align(
                alignment: Alignment.center,
                child: ListTile(
                  title: Text(
                    '90%',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  subtitle:
                      Text('Porcentaje de cumplimiento'),
                ),
              ),
            )
          ],
        )
        );
  }
}
