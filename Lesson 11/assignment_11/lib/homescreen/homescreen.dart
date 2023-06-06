import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../homecontroller/homecontroller.dart';
class Homescreen extends StatelessWidget {

  //Homecontroller homecontroller=Homecontroller();
  HomeController homeController=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.cyan,
       centerTitle: true,
       title: Text('Assignment of Getx-1, lesson-11'.toUpperCase()),
     ),
      body: Column(

        children: [

          Obx(() => Text((homeController.CityName.value))),
          ElevatedButton(onPressed: (){

            homeController.UpdateCityName('Dortmund');
          },


              child: Text('Update'))

        ],

      )



    );
  }
}
