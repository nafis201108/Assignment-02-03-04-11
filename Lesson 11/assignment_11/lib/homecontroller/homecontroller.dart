import 'package:get/get.dart';

class HomeController extends GetxController{



RxString CityName= 'Munich'.obs;
RxInt CityAge= 22.obs;
RxBool Polluted= false.obs;


void UpdateCityName(final name){
  CityName.value=name;
}

}