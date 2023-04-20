import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
class PrincipalContent extends StatelessWidget {
  const PrincipalContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
