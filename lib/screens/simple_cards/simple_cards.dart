import 'package:flutter/material.dart';

import 'package:flutter_basic_desing/widget/simple_cards/card.dart';

class SimpleCards extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         backgroundColor: Color(0xffe3e3e3),
         appBar: AppBar(
            title: Text(
               'Categories',
               style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
               ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
               CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 15,
                  child: Text('0', style: TextStyle(color: Colors.white),),
               ),
               SizedBox(width: 7,),
               CircleAvatar(
                  child: CircleAvatar(
                     backgroundImage: AssetImage('assets/rick.png'),
                  ),  
               )
            ],
         ),

         body: CardItem(),
      );
   }
}