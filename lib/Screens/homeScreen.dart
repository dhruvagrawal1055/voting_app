import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voting_app/Screens/home/CreateVotes.dart';
import 'package:voting_app/Screens/home/MyVotes.dart';
import 'package:voting_app/Screens/home/Result.dart';
import 'package:voting_app/Screens/loginScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(4, 42, 126, 1),
            title: const Text('Home'),
          ),
          drawer: Drawer(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(4, 42, 126, 1),
                ),
                accountName: Text("Dhruv Agrawal"),
                accountEmail: Text(""),
                currentAccountPicture: CircleAvatar(
                    foregroundImage: AssetImage('assets/images/avatar.png')),
              ),
              ListTile(
                leading: Icon(Icons.poll),
                title: InkWell(
                    onTap: () => Navigator.pushNamed(context, "/Createscreen"),
                    child: Text('Create Votes')),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: InkWell(
                    onTap: () => Navigator.pushNamed(context, "/Resultscreen"),
                    child: Text('Result')),
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: InkWell(
                    onTap: () => Navigator.pushNamed(context, "/Votescreen"),
                    child: Text('My Votes')),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: InkWell(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pushNamed(context, "/Loginscreen");
                    },
                    child: Text('Logout')),
              ),
            ],
          ))),
    );
  }
}
