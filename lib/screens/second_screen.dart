import 'package:flutter/material.dart';
import 'package:my_app_test/Content/Horizontal/porcentage_content.dart';
import 'package:my_app_test/Content/Vertical/activities_content.dart';
import 'package:my_app_test/Content/button_content.dart';
import 'package:my_app_test/Content/perfil_content.dart';
import 'package:my_app_test/widgets/Text/paragraph_editable.dart';
import 'package:my_app_test/widgets/Text/title_editable.dart';


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
        body:SafeArea(child: SingleChildScrollView(
          child: Column(
            children:  [
                   const PerfilContent(),
                   const PorcentageContent(),
                    const TitleEditable(titulo: 'Motivacion del dia',),
                       const ParagraphText(parrafo: 'Lorem ipsum dolor sit amet consectetur adipiscing elit cum, himenaeos eros sapien congue pellentesque fames ac dignissim lacinia, nunc porttitor mus ridiculus tristique in neque. Vitae interdum metus parturient sem aliquam egestas auctor, pulvinar lacus felis dui luctus a fusce, semper accumsan gravida faucibus sapien vel. Aliquet rhoncus cubilia eros pulvinar est mi quisque, proin in egestas tristique integer cursus interdum rutrum, dapibus penatibus tempus suspendisse erat parturient.',),
                         const  TitleEditable(titulo: 'Actividades del domingo 02 de marzo',),
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


