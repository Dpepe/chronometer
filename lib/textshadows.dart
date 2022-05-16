import 'package:flutter/material.dart';
class TextShadow extends StatelessWidget {
  const TextShadow({
    Key? key,
    required int sized,
    required Color colorShadow,
    required dynamic values,
  }) : _values = values, _sized = sized, _colorShadow = colorShadow, super(key: key);

  final dynamic _values;
   final dynamic _sized;
  final dynamic _colorShadow;
 

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_values',
      style:  TextStyle(
        fontSize: _sized,
        color: _colorShadow,
        shadows:  [
          BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255),
            offset:  Offset(1.0, 1.0),
            blurRadius: 2.0,
          ),
          BoxShadow(
            color: Color.fromARGB(255, 136, 136, 136),
            offset:  Offset(-1.0, -1.0),
            blurRadius: 2.0,
          )
        ],
      ),
    );
  }
}