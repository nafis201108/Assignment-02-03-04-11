import 'package:assignment_9/const/all_colors.dart';
import 'package:assignment_9/const/all_styles.dart';
import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
 //name dynamic korar jonno constuctor use korchi amra
  // constructor class er nam er sathe mil rekhe korte korte hoy

  String tittle;
  String price;

  CustomCard({required this.tittle,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,

      child: Card(
        color: Colors.yellowAccent.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(tittle,style: AllStyles.subtitle,) ,
            Text(price, style: AllStyles.title,)

          ],


        ),


    ),





    );
  }
}
