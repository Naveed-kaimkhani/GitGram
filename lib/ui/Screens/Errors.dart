import 'package:flutter/material.dart';

class Errors extends StatefulWidget {
  const Errors({Key? key}) : super(key: key);

  @override
  State<Errors> createState() => _ErrorsState();
}

class _ErrorsState extends State<Errors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("user not found"),
    );
  }
}
