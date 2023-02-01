import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class results extends StatefulWidget {
  const results({super.key});

  @override
  State<results> createState() => _resultsState();
}

class _resultsState extends State<results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text("Results")));
  }
}