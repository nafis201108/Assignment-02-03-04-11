import 'package:get/get.dart';

import '../model/student_model.dart';

class Homecontroller extends GetxController{


List<StudentModel> studentslist=[];


void addStudentData(StudentModel Data){


  studentslist.add(Data);
  update();



}




}