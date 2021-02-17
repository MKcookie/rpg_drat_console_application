// import 'package:test_dart_application/test_dart_application.dart';
// import 'package:test/test.dart';
import 'dart:math';

class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;
  Bicycle(this.cadence, this.gear);

  int get speed => _speed;
  void speedUp(int increment) {
    _speed += increment;
  }
  @override
  String toString() => 'Bicycle detail ==> cadence: $cadence, speed: $speed, gear: $gear +++++ and This is summary is ${cadence + speed + gear}';
}

class Rectangle {
  int width;
  int height;
  Point origin;

  Rectangle({this.width = 0, this.height= 0, this.origin = const Point(0,0)});

  @override
  String toString() => 'Rectangle ===> width: $width, height: $height, origin: (${origin.x}, ${origin.y})';
}

abstract class Shape {
  factory Shape(String type, double d) {
    if (type == 'square') return Square(d);
    throw 'Can\'t create $type';
  }
  double get area;
}

class Square implements Shape {
  final double side;
  Square(this.side);
  @override
  double get area => pow(side, 2);
}

Shape shapeFactory(String type, double d) {
  if (type == 'square') return Square(d);
  throw 'Can\'t create $type';
}

String scream(int length) => 'A${'a' * length}h';

void main() {
  // var bicycle = Bicycle(2,4);
  //var rectangle = Rectangle(width: 93, origin: const Point(2, 4));
  // bicycle.speedUp(100);
  // print(bicycle);
  // print(rectangle);
  // var square = shapeFactory('square', 5);
  // print(square.area);
  var values = [1, 3, 5, 7, 9];
  // values.forEach((element) {
  //   print(scream(element));
  // });
  values.map(scream).forEach(print);
}
