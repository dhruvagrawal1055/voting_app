import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  final String title;
  final Icon icon;
  const Field({required this.title,required this.icon ,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey[100]!))),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon:icon,
              border: InputBorder.none,
              hintText: "$title",
              hintStyle: TextStyle(color: Colors.grey[400])),
        ),
      ),
    );
  }
}

class registrationScreen extends StatelessWidget {
  const registrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: SafeArea(
          child: Column(children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromRGBO(4, 42, 126, 1),
              ),
              child: Stack(
                children: [
                  Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/light-1.png'))),
                      )),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/light-2.png'))),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/clock.png'))),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      margin: EdgeInsets.only(top: 200),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(143, 148, 251, .2),
                                          blurRadius: 20.0,
                                          offset: Offset(0, 10))
                                    ]),
                                child: Column(
                                  children: [
                                    Field(title: " Enter your name ",icon: Icon(Icons.person)),
                                    Field(title: "Email",icon: Icon(Icons.email),),
                                    Field(title: "Password",icon: Icon(Icons.password),),
                                    Field(title: "Confirm Password",icon: Icon(Icons.password),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                        child: Container(
                          margin: EdgeInsets.only(left: 25,right: 25,top: 15),
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(4, 42, 126, 1),
                                Color.fromRGBO(4, 42, 126, .6),
                              ])),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ]),
        )));
  }
}
