import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app_test/screens/home_screen.dart';


class PerfilContent extends StatelessWidget {
  const PerfilContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF176BFC),
      height: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
     Container(
              height: 150,
              width: 225,
              color: Colors.transparent,
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 90,
                    width: 235,
                    child: ListTile(
                        leading: IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pop(MaterialPageRoute(
                          builder: (context) =>
                              const HomeScreen(),
                        ));
                      },
                      icon: SvgPicture.asset(
                        'assets/Icons/arrow-left.svg',
                         color: Colors.white,
                      ),
                    )),
                  ),
                  Container(
                      color: Colors.transparent,
                      height: 50,
                      width: 235,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text('Juan Carlos Canto Uc', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
                        )),)
                ],
              )),
         const CircleAvatar(
          radius: 65,
          backgroundImage:
              AssetImage('assets/Pictures/generic-man.jpg'),
        )
      ]),
    );
  }
}
