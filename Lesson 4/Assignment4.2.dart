//1. Create a Super Class & Sub Class. And Make relationship between the two classes.Super Class Name : English, Sub Class Name : Bangla
void main() {
  education Education = education();
  Education.novel();
  Education.story();
}

abstract class book {
  void novel(); //Abstract cz body nai
  void story() {
    print('A Golden Goose is a Story');
    //concrete cz body achee
  }
}

class education extends book {
  @override
  void novel() {
    // TODO: implement novel
    print('Mens search for meaning is a novel');
  }
}
