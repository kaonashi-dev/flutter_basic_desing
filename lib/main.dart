import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_basic_desing/screens/scroll/scroll_desing.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return MaterialApp(
         debugShowCheckedModeBanner: false,
         
         localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
         ],
         supportedLocales: [
            const Locale('es', 'ES'),
         ],

         title: 'DISEÑOS',
         home: ScrollScreeen(),
      );
   }
}