import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myVotes extends StatefulWidget {
  const myVotes({super.key});

  @override
  State<myVotes> createState() => _myVotesState();
}

class _myVotesState extends State<myVotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Text("My Votes")));
  }
}