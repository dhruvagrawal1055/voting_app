import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                accountName: Text("Dhruv Agrawal"),
                accountEmail: Text(""),
                currentAccountPicture: CircleAvatar(foregroundImage: AssetImage('assets/images/light-2.png')),
                      ),
                
              
              ListTile(
                leading: Icon(Icons.poll),
                title: Text('Create Votes'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Result'),
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text('My Votes'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],))                            
          ),
          );
  }
}
