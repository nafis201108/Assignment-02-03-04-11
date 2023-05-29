//3.  What is interface? Write a program using interface.
//Dart interface
//An interface specifies the syntax that all classes must follow. An interface defines a set of methods for an object. The most common usage of the interface is to impose compulsion on a class. When a class implements an interface, it must override all its methods and instance variables.
void main() {
  outdoorsport Outdoorsport = outdoorsport();
  print(Outdoorsport.football);
  print(Outdoorsport.cricket);
}

class sports {
  dynamic cricket = 'IPL T-20';
  String football = 'football';
}

class outdoorsport implements sports {
  @override
  var cricket = 'One day International';

  @override
  String football = 'UCL';
}
