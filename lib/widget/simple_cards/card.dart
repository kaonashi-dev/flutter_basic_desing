import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return CustomScrollView(
               primary: false,
               slivers: <Widget>[
               SliverPadding(
                  padding: const EdgeInsets.all(20),
                  sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                     _Body(),
                     _Body(),
                  ],
               ),
            ),
         ],
      );
   }
}

class _Body extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return ClipRRect(
         borderRadius: BorderRadius.circular(10),
         child: Container(
            padding: EdgeInsets.all(8),
            child: _content(),
            color: Colors.white,
         ),
      );
   }

   Widget _content(){
      return Column(
         children: [
            
            Icon(
               Icons.design_services,
               color: Colors.blue,
            ),

            ClipRRect(
               borderRadius: BorderRadius.circular(7),
               child: Container(
                  color: Color(0xffe3e3e3),
                  child: Column(
                     children: [
                        Text('Desing'),
                        Text('8000 + jobs'),
                     ],
                  ),
               ),
            )

         ],
      );  
   }
}