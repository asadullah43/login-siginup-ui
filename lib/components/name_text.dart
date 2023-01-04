import 'package:flutter/material.dart';

class NameText extends StatelessWidget {
  const NameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
            child: Text(
          'Log in',
          style: TextStyle(
              fontSize: 24,
              fontFamily: 'Rubik Medium',
              color: Color(0xff203142)),
        )),
        SizedBox(height: 16),
        Center(
          child: Text(
            'lorem ipsum dolor sit amet, \nconsectetur adipiscing elit',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Rubik Regular',
              color: Color(0xff4c5980),
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
