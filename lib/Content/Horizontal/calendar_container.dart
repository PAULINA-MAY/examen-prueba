import 'package:flutter/material.dart';
import 'package:my_app_test/model/daysweek.dart';

class CalendarContent extends StatelessWidget {
  const CalendarContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var colorList = [Colors.black, Colors.white, Colors.black, Colors.black,Colors.black, Colors.black, Colors.black];
    return Container(
      margin: const  EdgeInsets.all(20.0),
        color: Colors.transparent,
        height: 85,
        child: ListView.builder(
         physics: const BouncingScrollPhysics(),
         scrollDirection: Axis.horizontal,
          itemCount: dayweeklist.length,
          itemBuilder: (context, index) {
            DayWeek dayweek = dayweeklist[index];
            return  Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              color: dayweek.color,
              child:SizedBox(
                height: 70,
                width: 66,
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(dayweek.day,textAlign: TextAlign.center, style: TextStyle(color: colorList[index], fontWeight: FontWeight.bold, fontSize: 16 ),),
                    ),
                    subtitle: Text(dayweek.dayname,textAlign: TextAlign.center, style: TextStyle(color: colorList[index], fontWeight: FontWeight.bold, fontSize: 14,),),
                                ),
                ),
                ),
            );
          },
        ));
  }
}
