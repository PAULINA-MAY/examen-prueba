import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app_test/model/activities.dart';

class ActivitiesListContent extends StatelessWidget {
  const ActivitiesListContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return  Container(
         margin: const  EdgeInsets.all(20.0),
         color: Colors.transparent,
              height: 400,
         child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: activitiesList.length,
          itemBuilder: (context, index) {
             ActiviTies activiTies = activitiesList[index];
            return  Card(
              elevation: 4,
              shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              child:SizedBox(
                height: 70,
                child:  ListTile(
                  title: Text(activiTies.title, style: const  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                  subtitle: Text(activiTies.description),
                  leading: SvgPicture.asset('assets/Images/Do it.svg',
                  height: 40,
                  ),
                ),)
            );
          },
        )
    );
  }
}