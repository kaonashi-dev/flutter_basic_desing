import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return SafeArea(
         bottom: false,
         child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Text(
                     'Magna aute',
                     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                     'Magna aute in duis incididunt',
                     style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
               ],
            ),
         ),
      );
   }
}