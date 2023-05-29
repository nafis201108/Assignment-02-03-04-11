//1. Create a Super Class & Sub Class. And Make relationship between the two classes.Super Class Name : English, Sub Class Name : Bangla
void main() {
  Bangla bangla = Bangla();

  print(bangla.literature);
}

class English {
  dynamic literature = 'novel no 1';
  void subject() {
    print('Marks in English is 80');
  }
}

class Bangla extends English {
  String bengalialphabets = 'thirtysix in words';
}
