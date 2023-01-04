import 'package:flutter/material.dart';
import 'package:lgoin_ui/components/button.dart';
import 'package:lgoin_ui/components/logo.dart';
import 'package:lgoin_ui/components/text_field.dart';
import 'package:lgoin_ui/home_screen.dart';
import 'package:lgoin_ui/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffced4da),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Logo(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Rubik Medium',
                  color: Color(0xff203142)),
            ),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(
              hintText: 'First Name',
              fieldLeadingIcon: Icon(
                Icons.account_box,
                color: Color(0xff323F4B),
              ),
            ),
            const SizedBox(height: 10),
            const MyTextField(
              hintText: 'Last Name',
              fieldLeadingIcon: Icon(
                Icons.account_box,
                color: Color(0xff323F4B),
              ),
            ),
            const SizedBox(height: 10),
            const MyTextField(
              hintText: 'Email',
              fieldLeadingIcon: Icon(
                Icons.email,
                color: Color(0xff323F4B),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const MyTextField(
              hintText: 'Password',
              fieldLeadingIcon: Icon(
                Icons.lock,
                color: Color(0xff323F4B),
              ),
            ),
            const SizedBox(height: 10),
            const MyTextField(
              hintText: 'Confirm Password',
              fieldLeadingIcon: Icon(
                Icons.lock,
                color: Color(0xff323F4B),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const SafeArea(child: HomeScreen())));
              }),
              child: const Button(
                text: 'Sign Up',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ALready have account?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Rubik Regular',
                    color: Color(0xff4c5980),
                    fontSize: 16,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SafeArea(child: LoginScreen())));
                  },
                  child: const Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Rubik Medium',
                      color: Color(0xffF9073B),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
