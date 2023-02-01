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
              DrawerHeader(
                child: Positioned(
                  left: 600,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/light-2.png')),
                    ),
                  ),
                ),
                // Column(
                //   children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         image: DecorationImage(
                //     image: AssetImage('assets/images/light-2.png')),
                //       ),
                //     ),
                //     Text(
                //       'Dhruv',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 30,
                //       ),
                //     ),
                //   ],
                // ),

                decoration: BoxDecoration(
                  color: Color.fromRGBO(4, 42, 126, 1),
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
