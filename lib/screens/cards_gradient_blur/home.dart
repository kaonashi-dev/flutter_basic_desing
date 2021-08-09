import 'package:flutter/material.dart';

import 'package:flutter_basic_desing/widget/cards_gradient_blur/backgroud_gradient.dart';
import 'package:flutter_basic_desing/widget/cards_gradient_blur/card_table.dart';
import 'package:flutter_basic_desing/widget/cards_gradient_blur/header_text.dart';
import 'package:flutter_basic_desing/widget/cards_gradient_blur/tabs.dart';

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

               HeaderText(),

               CardTable()

            ],
         ),
      );
   }

}