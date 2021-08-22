import 'dart:ui';

import 'package:flutter/material.dart';
 
class CardTable extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Table(
         children: [
            TableRow(
               children: [
                  _SingleCard(icon: Icons.home, color: Colors.blue, text: 'TARJETA 1',),
                  _SingleCard(icon: Icons.transform, color: Colors.purple, text: 'TARJETA 2',),
               ],
            ),
            TableRow(
               children: [
                  _SingleCard(icon: Icons.search, color: Colors.pink, text: 'TARJETA 3',),
                  _SingleCard(icon: Icons.archive, color: Colors.orange, text: 'TARJETA 4',),
               ],
            ),
            TableRow(
               children: [
                  _SingleCard(icon: Icons.alarm, color: Colors.green, text: 'TARJETA 5',),
                  _SingleCard(icon: Icons.local_post_office, color: Colors.yellow, text: 'TARJETA 6',),
               ],
            ),
            TableRow(
               children: [
                  _SingleCard(icon: Icons.developer_board, color: Colors.purple, text: 'TARJETA 7',),
                  _SingleCard(icon: Icons.computer, color: Colors.pink, text: 'TARJETA 8',),
               ],
            ),
         ],
      );
   }
}

class _SingleCard extends StatelessWidget {

   final IconData icon;
   final Color color;
   final String text;

  const _SingleCard({required this.icon, required this.color, required this.text});

   @override
   Widget build(BuildContext context) {
      return _Background(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               CircleAvatar(
                  backgroundColor: color,
                  foregroundColor: Colors.white,
                  child: Icon(icon, size: 39,),
                  radius: 35,
               ),
               SizedBox( height: 11, ),
               Text(text, style: TextStyle( color: color, fontSize: 17 ),)
            ],
         )
      );
   }
}

class _Background extends StatelessWidget {
   
   final Widget child;

  const _Background({required this.child});

   @override
   Widget build(BuildContext context) {
      return Container(
         margin: EdgeInsets.all(15),
         child: ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: BackdropFilter(
               filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
               ),
               child: Container(
                  height: 170,
                  decoration: boxDecoration(),
                  child: this.child,
               ),
            ),
         ),
      );
   }

   BoxDecoration boxDecoration() {
      return BoxDecoration(
         color: Color.fromARGB(62, 66, 107, 7),
         borderRadius: BorderRadius.circular(19)
      );
   }
   
}