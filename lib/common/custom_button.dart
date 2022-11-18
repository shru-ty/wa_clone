import 'package:flutter/material.dart';
import 'package:wa_clone/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({Key? key,required this.text,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: tabColor,
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: onPressed,
        child: Text(text,
          style: const TextStyle(
            color: blackColor
          ),),
    );
  }
}
