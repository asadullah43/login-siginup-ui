import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage('images/logo.png'),
          height: 50,
          width: 50,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Maintenance',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Rubik Medium',
                  color: Color(0xff203142)),
            ),
            Text(
              'Box',
              style: TextStyle(
                  fontFamily: 'Rubik Medium',
                  fontSize: 24,
                  color: Color(0xffF9073B)),
            ),
          ],
        )
      ],
    );
  }
}
