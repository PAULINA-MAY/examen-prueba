import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
       icon: SvgPicture.asset('assets/Icons/notify.svg',
            height: 20, width: 20, color: Colors.black54),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  contentPadding: EdgeInsets.zero,
                  content: SizedBox(
                    height: 400,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFF176BFC),
                              borderRadius: BorderRadius.circular(5.0)),
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  'Notificaciones',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: SvgPicture.asset(
                                    'assets/Icons/Cancel.svg',
                                    color: Colors.white54,
                                  ))
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 100),
                          child: Text('Aun no tienes notificaciones'),
                        )
                      ],
                    ),
                  ));
            },
          );
        },
       );
  }
}
