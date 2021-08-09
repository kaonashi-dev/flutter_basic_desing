import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return BottomNavigationBar(
         backgroundColor: Color.fromRGBO(55, 57, 64, 1),
         selectedItemColor: Colors.pink,
         unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
         items: [
            BottomNavigationBarItem(
               icon: Icon( Icons.home ),
               label: 'HOME'
            ),

            BottomNavigationBarItem(
               icon: Icon( Icons.calendar_today ),
               label: 'CALENDAR'
            ),

            BottomNavigationBarItem(
               icon: Icon( Icons.supervised_user_circle_sharp ),
               label: 'USER'
            )
         ]
      );
   }
}