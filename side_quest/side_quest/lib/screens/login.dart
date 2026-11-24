import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
        backgroundColor: const Color(0xFFF8F6F0),
        body: SafeArea( // Keeps content below the phone's status bar/notch
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0), // Adjust this number as needed
              child: Column(
                spacing: 30,
                children: [
                  Image.asset('assets/logo.png', height: 150, fit: BoxFit.contain),
                  LoginForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget{
  const LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 350,
      color: Color(0xFFE4DFD0)
    );
  }
}