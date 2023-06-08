import 'package:assignment_12/controller/home_controller.dart';
import 'package:assignment_12/model/student_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class Homepage extends StatelessWidget {

String Name='';
int Studentid=0;
int session=0;
String department='';
double course=0;
final formkey = GlobalKey<FormState>(); //mukhosto chara no way website a ashena
Homecontroller homecontroller= Get.put(Homecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('course registration form'.toUpperCase()),
      backgroundColor: Colors.black87,

    ),

      body: Center(
        child: Container(
          child:Column(
            children: [
              Form(
                key: formkey,
                child: Column(
                  children: [
TextFormField(decoration: InputDecoration(hintText: "StudentID"),


  validator: (value){
  if (value!.isEmpty){

    return 'Empty Field';
  }
  return null;
},
  onSaved:(value){
  Studentid = int.parse(value.toString());
  } ,

),

                    TextFormField(decoration: InputDecoration(hintText: "Name"),
                      validator: (value){
                        if (value!.isEmpty){

                          return 'Empty Field';
                        }
                        return null;
                      },
                      onSaved:(value){
                        Name= value.toString();
                      } ,



                    ),






                    TextFormField(decoration: InputDecoration(hintText: "Session"),

                      validator: (value){
                        if (value!.isEmpty){

                          return 'Empty Field';
                        }
                        return null;
                      },
                      onSaved:(value){
                      session=  int.parse(value.toString());
                      } ,



                    ),
                    TextFormField(decoration: InputDecoration(hintText: "Department"),

                      validator: (value){
                        if (value!.isEmpty){

                          return 'Empty Field';
                        }
                        return null;
                      },
                      onSaved:(value){
                        department= value.toString();
                      } ,

                    ),
                    TextFormField(decoration: InputDecoration(hintText: "Course"),

                      validator: (value){
                        if (value!.isEmpty){

                          return 'Empty Field';
                        }
                        return null;
                      },
                      onSaved:(value){
                       course= double.parse(value.toString());
                      } ,


                    ),
                         SizedBox(height: 15.0),



                  ],
                ),


              ),

              ElevatedButton(onPressed: (){


                if(formkey.currentState!.validate()){

                  formkey.currentState!.save();

                  homecontroller.addStudentData(StudentModel(Name, Studentid, session, department, course));
                }




              }, child: Text('Add Data')),

              Expanded(
                child: GetBuilder<Homecontroller>(builder: (_){

                  return ListView.builder(


                      itemCount: homecontroller.studentslist.length,

                      itemBuilder: (context, index){


                        return Container(

                          color: Colors.green,
                          child: Column(
                            children: [

                              Text(homecontroller.studentslist[index].session.toString()),

                              Text(homecontroller.studentslist[index].Studentid.toString()),
                              Text(homecontroller.studentslist[index].department),

                              Text(homecontroller.studentslist[index].Name),

                              Text(homecontroller.studentslist[index].course.toString()),

                            ],
                          ),
                        );
                      }


                  );







                }
                ),
              )

            ],
          ),


        ),
      )


    );
  }
}
