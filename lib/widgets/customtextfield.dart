import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String mytext;
  final bool isHidden;
  const CustomTextField({super.key,required this.controller,required this.mytext,required this.isHidden});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        obscureText: isHidden,
        controller:controller ,
        decoration:  InputDecoration(
          hintText: mytext,
          border:  const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black38,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black38,
            ), 
        ),
      ),
      validator: (val){},
      ),
    );
  }
}