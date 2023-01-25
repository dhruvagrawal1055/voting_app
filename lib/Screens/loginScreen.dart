import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.all(20),
          hintText: "Enter your email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    );
    final PassField = TextFormField(
      autocorrect: false,
      controller: passController,
      obscureText: true,
      onSaved: (value) {
        passController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          contentPadding: EdgeInsets.all(20),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Form(
              key: formKey,
              child: Column(
                children: [emailField, PassField],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
