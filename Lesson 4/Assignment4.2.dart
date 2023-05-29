//2. Write a program using abstract class.
void main() {
  education Education = education();
  Education.novel();
  Education.
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
