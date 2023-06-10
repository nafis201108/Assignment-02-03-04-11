import 'package:assignment_9/const/all_colors.dart';
import 'package:assignment_9/const/all_icons.dart';
import 'package:assignment_9/const/all_styles.dart';
import 'package:assignment_9/const/all_text.dart';
import 'package:assignment_9/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
class Homepage extends StatefulWidget {


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool status= false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     appBar: AppBar(
       title: Center(child: Text('Home Page')),
       titleTextStyle: TextStyle(fontSize: 35,fontWeight: FontWeight.w600,color: Allcolors.orangeColor),
       titleSpacing: 10,

       backgroundColor: Allcolors.bluecolor,
       elevation: 0.2,
      leading:Container(

        child: Image.asset('Assets/images/1.jpg',fit: BoxFit.fill,height: 10,width: 10,),
        padding: EdgeInsets.only(left: 10,right: 0,top: 5,bottom: 5)

      ),
        actions: [


           FlutterSwitch(
            width: 100.0,
            height: 40.0,
            valueFontSize: 25.0,
            activeColor: Allcolors.orangeColor,
            inactiveColor: Allcolors.greycolor,

            toggleSize: 45.0,
            value: status,
            borderRadius: 20.0,
            padding: 7.0,

            showOnOff: true,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            },
          ),

        ],

     ),
backgroundColor: Colors.orange.shade100,
body: Container(
  padding: EdgeInsets.all(12),
  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  child:Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text(('Active Order')),
        SizedBox(height: 5),
        Card(
          color: Allcolors.purple,
          child: Column(

            children: [
              ListTile(
                leading: Icon(Icons.wallet),
                title: Text(Alltexts.cod),

              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text(Alltexts.shopname),

              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text(Alltexts.location),

              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

children: [

  ElevatedButton(onPressed: (){}, child: Text('Details'),
  style: ElevatedButton.styleFrom(backgroundColor: Allcolors.greycolor),
  ),
  ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.directions), label: Text('Directions'),
  style: ElevatedButton.styleFrom(backgroundColor: Allcolors.orangeColor),
  )
],

                ),
              )
            ],

          ),


        ),
        Text(Alltexts.earning),

        Card(
          color: Allcolors.skyblueColor,
          child: Padding(
            padding: const EdgeInsets.all(12.0),

            child: Column(


              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('Available Balance', style: AllStyles.subtitle,),
                        SizedBox(height: 5),
                        Text('5,400', style: AllStyles.heading,),
                      ],
                    ),


                    Column(
                      children: [
                        Text('Cash in Hand', style: AllStyles.subtitle,),
                        SizedBox(height: 5),
                        Text('3,200', style: AllStyles.heading,),
                      ],
                    )

                  ],
                ),

              ],
            ),
          ),

        ),
        SizedBox(height: .01),
        Card(
          color: Allcolors.limecolor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(Alltexts.today, style: AllStyles.subtitle),
                          SizedBox(height: 2),
                          Text('1,000', style: AllStyles.heading)
                        ],
                      ),

                      Column(
                        children: [
                          Text(Alltexts.week, style: AllStyles.subtitle),
                          SizedBox(height: 2),
                          Text('2,000', style: AllStyles.heading)
                        ],
                      ),
                      Column(
                        children: [
                          Text(Alltexts.month, style: AllStyles.subtitle),
                          SizedBox(height: 2),
                          Text('5,000', style: AllStyles.heading)
                        ],
                      ),



                    ],


                  )
                ],
              ),
            ),
          ),

        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomCard(tittle: 'Today', price: '12', ),

            CustomCard(tittle: 'This Week', price: '7'),
            CustomCard(tittle: 'This Month', price: '30'),

          ],
        ),

        
        Row(
          children: [
            
            
            
          ],
          
          
          
        )






      ],



    ) ,
  ),

bottomNavigationBar:
    
Container(
  height: 23,
  width: 5,
  color: Allcolors.bluecolor,
  padding: EdgeInsets.only(bottom: 100),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(Icons.person, color: Colors.black,),
      Icon(Icons.home_filled, color: Colors.black ),
      Icon(Icons.search, color: Colors.black),
      Icon(Icons.settings, color: Colors.black)
    ],
  ),
),

    );
  }
}
