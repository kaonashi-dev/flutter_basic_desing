import 'package:flutter/material.dart';
 
class CardTable extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
      return Table(
         children: [
            TableRow(
               children: [
                  _SingleCard(),
                  _SingleCard(),
               ],
            ),
         ],
      );
   }
}

class _SingleCard extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Container(
         child: null,
      );
   }
}