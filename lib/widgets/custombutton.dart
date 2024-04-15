import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        shape:const RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.circular(5))),
        backgroundColor: GlobalVariable.secondaryColor,
        foregroundColor: GlobalVariable.backgroundColor,
        minimumSize: const Size(double.infinity, 50)
      ),
    );
  }
}
