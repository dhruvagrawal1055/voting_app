import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class createVote extends StatefulWidget {
  const createVote({super.key});

  @override
  State<createVote> createState() => _createVoteState();
}

class _createVoteState extends State<createVote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Text("Create votes")));
  }
}