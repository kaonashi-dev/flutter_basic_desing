import 'package:flutter/material.dart';

import 'package:flutter_basic_desing/widget/backgroud_gradient.dart';
import 'package:flutter_basic_desing/widget/header_text.dart';
import 'package:flutter_basic_desing/widget/tabs.dart';

class HomeScreeen extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
      return Scaffold(
         body: Stack(
            children: [

               BackgroundGradient(),
               
               _HomeBody()

            ],
         ),
         bottomNavigationBar: Tabs(),
      );
   }
}

class _HomeBody extends StatelessWidget {
   
   @override
   Widget build(BuildContext context) {
      return SingleChildScrollView(
         child: Column(
            children: [

               HeaderText()

            ],
         ),
      );
   }

}