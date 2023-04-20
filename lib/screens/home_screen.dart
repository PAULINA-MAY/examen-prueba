import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app_test/Content/Horizontal/calendar_container.dart';
import 'package:my_app_test/Content/Vertical/activities_content.dart';
import 'package:my_app_test/Content/principal_content.dart';
import 'package:my_app_test/screens/second_screen.dart';
import 'package:my_app_test/widgets/Button/customAlertDialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Bienvenido, practicante',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  )); 
                },
                icon: SvgPicture.asset('assets/Icons/user.svg',
                    height: 20, width: 20, color: Colors.black54)),
            const CustomAlertDialog()
      
          ],
        ),
      body:
      SingleChildScrollView(
        child: Column(
          children: const [
             PrincipalContent(),
                 Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            'Fechas Agendadas',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ))),
              CalendarContent(),
                Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            'Fechas Agendadas',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ))),
            ActivitiesListContent() 

                    
          ],
        ),
      )
      );
  }
}

