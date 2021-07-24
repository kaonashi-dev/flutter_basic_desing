import 'package:flutter/material.dart';

import 'package:flutter_basic_desing/screens/scroll_desing.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
         debugShowCheckedModeBanner: false,
         title: 'Material App',
         home: ScrollScreeen(),
      );
   }
}