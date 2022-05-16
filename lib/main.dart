import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_desktop_1/textshadows.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_desktop_1/numbers.dart';
import 'package:flutter_desktop_1/icons-action.dart';
import 'package:flutter_desktop_1/contador.dart';

import 'dart:async';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cronómetro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  

class _MyHomePageState extends State<MyHomePage> {

  late Timer _timer;

  var clsCount = CounterCronometro();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 100), (Timer _timer)=>setState(() {
      clsCount.incrementCounter();
    }));
  }

  void _reset(){
    setState(() {
      clsCount.reset();
    });
  }

  void _play(){
    if(!_timer.isActive){
      _timer = Timer.periodic(Duration(milliseconds: 100), (Timer _timer)=>setState(() {
        clsCount.incrementCounter();
      }));
    };
  }

  void _stop(){
    _timer.cancel();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final now = new DateTime.now();
    late String formatter = DateFormat('yyyy-MM-dd – kk:mm:ss').format(now);
    return Scaffold(
      /* appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text(widget.title),
      ), */
      backgroundColor: const Color.fromARGB(255, 221, 221, 221),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextShadow(values: 'CHRONOMETER', sized: 40,colorShadow:Color.fromARGB(255, 181, 125, 255)),
            const SizedBox(
              height: 25,
            ),
            TextShadow(values: formatter, sized: 50, colorShadow: Color.fromARGB(255, 253, 255, 125)),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                const SizedBox(width: 50,),
                IconsShadow(clicked: _play, icons:Icons.play_arrow),
                const SizedBox(width: 50,),
                IconsShadow(clicked: _stop,icons:Icons.stop,),
                const SizedBox(width: 50,),
                IconsShadow(clicked: _reset,icons:Icons.cleaning_services_outlined,),
                
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CountDigital(values: clsCount.counterHoraLeft),
                CountDigital(values: clsCount.counterHoraRight),
                TextShadow(values: ':', sized: 60, colorShadow:Color.fromRGBO(125, 157, 255, 1)),
                CountDigital(values: clsCount.counterMinLeft),
                CountDigital(values: clsCount.counterMinRight),
                TextShadow(values: ':', sized: 60, colorShadow:Color.fromRGBO(125, 157, 255, 1)),
                CountDigital(values: clsCount.counterSegLeft),
                CountDigital(values: clsCount.counterSegRight),
                TextShadow(values: ':', sized: 60, colorShadow:Color.fromRGBO(125, 157, 255, 1)),
               // CountDigital(values: clsCount.counter_miliLeft),
                CountDigital(values: clsCount.counterMiliRight),
              ],
            ),
           
          ],
        ),
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}






