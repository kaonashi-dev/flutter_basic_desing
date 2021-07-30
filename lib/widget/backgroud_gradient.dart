import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Stack(
         children: [
            
            Container(decoration: _boxDecoration()),

            Positioned(
               top: -100,
               left: -30,
               child: _BoxDecoration()
            )

         ],
      );
   }
   
   BoxDecoration _boxDecoration() {
      return BoxDecoration(
         gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.7],
            colors: [
               Color(0xff2E305F),
               Color(0xff202333),
            ]
         ),
      );
   }
}

class _BoxDecoration extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Transform.rotate(
         angle: -pi / 5.0,
         child: Container(
            height: 330,
            width: 350,
            decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(30),
               gradient: LinearGradient(
                  colors: [
                     Color.fromRGBO(236, 98, 188, 1),
                     Color.fromRGBO(241, 142, 172, 1),
                  ]
               ),
            ),
         ),
      );
   }
}
