import 'package:flutter/material.dart';
class IconsShadow extends StatelessWidget {
  final clicked;
  final icons;
  const IconsShadow({
    Key? key,
    this.clicked,
    this.icons
  }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color.fromARGB(255, 245, 245, 245), width: 2),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(204, 231, 231, 231),
            offset:  Offset(-5.0, -5.0),
            blurRadius: 10.0
          ),
          BoxShadow(
            spreadRadius: 0.2,
            color: Color.fromARGB(255, 255, 255, 255),
            offset:  Offset(-5.0, -5.0),
            blurRadius: 8.0
          ),
          BoxShadow(
            color: Color.fromARGB(106, 73, 73, 73),
            offset:  Offset(3.0, 3.0),
            blurRadius: 12.0
          ),
          /*Boreder sin shadow dentro */
          BoxShadow(
            color: Color.fromARGB(255, 231, 231, 231),
            offset:  Offset(0.0, 0.0),
            blurRadius: 1.0
          ), 
          /*Boreder shadow dentro del contenido*/
          BoxShadow(
            color: Color.fromARGB(255, 230, 230, 230),
            spreadRadius: 0.0,
            blurRadius: 6.0,
          ),
          
        ],
        //color: Color.fromARGB(255, 216, 216, 216),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: GestureDetector(
        
          onTap: clicked,
          child:  Icon(
            icons,
            color: Color.fromARGB(200, 75, 75, 75),
          ),
        ),
      ),
    );
  }
}
