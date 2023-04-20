import 'package:flutter/material.dart';
import 'package:my_app_test/Content/Horizontal/porcentage_content.dart';
import 'package:my_app_test/Content/Vertical/activities_content.dart';
import 'package:my_app_test/Content/button_content.dart';
import 'package:my_app_test/Content/perfil_content.dart';


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
    bool isHorizontal(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;
    bool isVertical(BuildContext context) =>
        MediaQuery.of(context).size.width < 500;
    return Scaffold(
        body:SafeArea(child: SingleChildScrollView(
          child: Column(
            children:  [
                   const PerfilContent(),
                   const PorcentageContent(),
                    const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text('Fechas Agendadas', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),))),
                       const Padding(
                        padding: EdgeInsets.all(32),
                        child: Text(
                          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                          'Alps. Situated 1,578 meters above sea level, it is one of the '
                          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                          'half-hour walk through pastures and pine forest, leads you to the '
                          'lake, which warms to 20 degrees Celsius in the summer. Activities '
                          'enjoyed here include rowing, and riding the summer toboggan run.',
                          softWrap: true,
                        ),
                      ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              child: Text('Fechas Agendadas',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),))),
                      Container(
                            color: Colors.transparent,
                            height: 250,
                            child:  const ActivitiesListContent()),
                            const ButtonContent(),
          
            ],
          ),
        ))
         );
  }
}

