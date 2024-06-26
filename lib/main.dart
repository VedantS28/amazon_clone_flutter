import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/router.dart';
import 'package:amazon_clone/screens/auth_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariable.backgroundColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        colorScheme: const ColorScheme.light(primary: GlobalVariable.secondaryColor,)
      ),
      onGenerateRoute: (settings)=>generateRoute(settings),
      home: const AuthScreen(),
    );
  }
}
