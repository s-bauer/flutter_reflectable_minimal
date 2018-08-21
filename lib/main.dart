import 'package:flutter/material.dart';
import 'package:reflectable/reflectable.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(child: Text("Demo")),
    );
  }
}

class Reflector extends Reflectable {
  const Reflector()
      : super(invokingCapability);
}

const reflector = const Reflector();

@reflector
class A {
  final int a;
  A(this.a);
  greater(int x) => x > a;
  lessEqual(int x) => x <= a;
}