import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 300,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffF9073B),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontFamily: 'Rubik Medium', fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
