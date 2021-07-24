import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class ScrollScreeen extends StatelessWidget {

   BoxDecoration _boxDecaration() {
      return BoxDecoration(
         gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors:  [
               Color(0xff5EE8C5),
               Color(0xff30BAD6),
            ]
         )
      );
   }

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         body: Container(
            decoration: _boxDecaration(),
            child: PageView(
               physics: BouncingScrollPhysics(),
               scrollDirection: Axis.vertical,
               children: [
                  Screen1(),
                  Screen2()
               ],
            ),
         ),
      );
   }
}

class Screen1 extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Stack(
         children: [
            _Background(),
            Content()
         ]
      );
   }
}


class Content extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      
      final textStyle = TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold);
      
      final now = DateFormat('EEEE', 'ES').format(DateTime.now());

      return SafeArea(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               SizedBox(height: 19,),
               Text('13°', style: textStyle),
               Text(now.toString(), style: textStyle),
               Expanded(child: Container()),
               Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 100,)            
            ],
         ),
      );
   }
}

class _Background extends StatelessWidget {
  
   @override
   Widget build(BuildContext context) {
      return Container(
         color: Color(0xff30BAD6),
         height: double.infinity,
         alignment: Alignment.topCenter,
         child: Image(image: AssetImage('assets/scroll.png'))
      );
   }
}

class Screen2 extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Container(
         color: Color(0xff30BAD6),
         child: Center(
            child: TextButton(
               child: Padding(
                 padding: EdgeInsets.symmetric(horizontal: 30),
                 child: Text('BIENVENIDO', style: TextStyle(color: Colors.white, fontSize: 30)),
               ),
               style: TextButton.styleFrom(
                  backgroundColor: Color(0xff0098FA),
                  shape: StadiumBorder()
               ),
               onPressed: () {}
            )
         ),
      );
   }
}