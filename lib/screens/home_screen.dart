import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    bool isHorizontal(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;
    bool isVertical(BuildContext context) =>
        MediaQuery.of(context).size.width < 500;

    return Scaffold(
     appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Bienvenido, practicante',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
              /*     Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  )); */
                },
                icon: SvgPicture.asset('assets/Icons/user.svg',
                    height: 20, width: 20, color: Colors.black54)),
           IconButton(
                onPressed: () {
              /*     Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  )); */
                },
                icon: SvgPicture.asset('assets/Icons/notify.svg',
                    height: 20, width: 20, color: Colors.black54)),
      
          ],
        ),
      body:Center(
        child: Column(
          children: [
            
            if(isVertical(context) || isHorizontal(context))
            Expanded(child: Container(
              width: width,
              color: Colors.grey.shade300,
              child: Column(
                children: [
                  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: const  Color(0xFF176BFC),
          borderRadius: BorderRadius.circular(15.0)
        ),
        height: 90,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
                color: Colors.transparent,
                  width: 200,
                  child: const ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text('Marzo/02/2023', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize:14 ),)),
                  subtitle: Text('6 de 10 tareas realizadas', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17 ),),
                ),
                ),
              Expanded(
                child: Container(
                  width: 90,
                  color: Colors.transparent,
                  child: SvgPicture.asset('assets/Images/thinking girl.svg',
                  fit: BoxFit.fill,
                  ),
                           
                ),
              ),
              
             
          ],
        ),
      ),
    )   
              ],
            ),

          ))

        ],
        ),
         ));
  }
}

