import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = "/auth-screen";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  int isPressed = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Welcome"),
            Row(
              children: [
                Radio(value: isPressed, groupValue: 1, onChanged: (isTrue){
                  setState(() {
                    isPressed==isTrue!;
                  });
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
