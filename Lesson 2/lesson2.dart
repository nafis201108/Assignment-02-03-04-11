//1. You have a list bellow:
//List names=["Sakib","Rakib","Noman",100];
//Add "Nayeem" into the list index of 2
//Find list length
//Find list is empty or not?
//Remove 100 from list

void main() {
  List names = ["sakib", 'Rakib', 'Noman', 100];
  names.insert(2, "Nayeem");
  print(names);
  names.length;
  print(names.length);
  names.isEmpty;
  print(names.isEmpty);
  names.removeAt(4);
  print(names);
}
