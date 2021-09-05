import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
                     _Body(icon: Icons.design_services_rounded, color: Color(0xff7b23f7), title: 'Desing',),
                     _Body(icon: Icons.dashboard, color: Color(0xff03befc), title: 'Marketting',),
                     _Body(icon: Icons.format_textdirection_l_to_r_outlined, color: Color(0xff0ffa61), title: 'IT',),
                     _Body(icon: Icons.table_chart_rounded, color: Color(0xfffad12d), title: 'Teaching',),
                     _Body(icon: Icons.medical_services, color: Color(0xff9cf725), title: 'Medical',),
                     _Body(icon: Icons.developer_board, color: Color(0xfff00cc2), title: 'Dev',),
                  ],
               ),
            ),
         ],
      );
   }
}

class _Body extends StatelessWidget {

   final IconData icon;
   final Color color;
   final String title;

  const _Body({required this.icon, required this.title, required this.color});

   @override
   Widget build(BuildContext context) {
      return ClipRRect(
         borderRadius: BorderRadius.circular(10),
         child: Container(
            padding: EdgeInsets.all(8),
            child: _Content(icon: icon, color: color, title: title),
            color: Colors.white,
         ),
      );
   }
}

class _Content extends StatelessWidget {

   final IconData icon;
   final Color color;
   final String title;

   const _Content({required this.icon, required this.title, required this.color});

   @override
   Widget build(BuildContext context) {
      
      return Column(
         children: [
            
            Align(
               alignment: Alignment.topLeft,
               child: Stack(
                  children: [
                     ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                           width: 35,
                           height: 35,
                           color: Color(0xffdfdfdf),
                        ),
                     ),
                     Icon(
                        icon,
                        color: color,
                        size: 55,
                     ),
                  ],
               ),
            ),

            Expanded(child: Container(child: null,)),

            Row(
               children: [
                  Expanded(
                     child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Expanded(
                           child: Container(
                              padding: EdgeInsets.all(3),
                              color: Color(0xfff7e9d5),
                              child: Column(
                                 children: [
                                    Text(title),
                                    Text('8000 + jobs'),
                                 ],
                              ),
                           ),
                        ),
                     ),
                  )
               ],
            )
         ],
      );
   }
}