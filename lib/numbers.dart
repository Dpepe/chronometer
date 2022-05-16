import 'package:flutter/material.dart';
import 'package:flutter_desktop_1/textshadows.dart';

class CountDigital extends StatelessWidget {
  const CountDigital({
    Key? key,
    required int values,
  }) : _values = values, super(key: key);
  final int _values;
  @override
  Widget build(BuildContext context) {
    return 
    AnimatedSwitcher(
      duration: Duration(milliseconds: 200),
      switchInCurve: Curves.bounceInOut,
      switchOutCurve: Curves.bounceInOut,
      transitionBuilder: (Widget child, Animation<double> animation) {
        final  offsetAnimation = Tween<Offset>(begin: Offset(-0.1, -0.0), end: Offset(0.0, 0.0)).animate(animation);
        return SlideTransition(position: offsetAnimation, child: child,);
      },
      child:  Container(
        key: ValueKey<int>(_values),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(2.0),
           color: Color.fromARGB(255, 255, 255, 255),
        ),
        margin: EdgeInsets.all(2),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0,8.0,15.0,8.0),
          child: TextShadow(values: _values, sized: 60, colorShadow: Color.fromRGBO(125, 157, 255, 1)),
        ),
      ),            
    );
  }
}

