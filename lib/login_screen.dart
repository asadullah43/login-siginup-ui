import 'package:flutter/material.dart';
import 'package:lgoin_ui/components/button.dart';
import 'package:lgoin_ui/components/logo.dart';
import 'package:lgoin_ui/components/name_text.dart';
import 'package:lgoin_ui/components/text_field.dart';
import 'package:lgoin_ui/home_screen.dart';
import 'package:lgoin_ui/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffced4da),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Logo(),
              const SizedBox(
                height: 40,
              ),
              const NameText(),
              const SizedBox(
                height: 40,
              ),
              const MyTextField(
                hintText: 'Email',
                fieldLeadingIcon: Icon(
                  Icons.email,
                  color: Color(0xff323F4B),
                ),
              ),
              const SizedBox(height: 20),
              const MyTextField(
                hintText: 'Password',
                fieldLeadingIcon: Icon(
                  Icons.lock,
                  color: Color(0xff323F4B),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 200),
                child: Text('Forgot Password?'),
              ),
              const SizedBox(
                height: 90,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SafeArea(child: HomeScreen())));
                },
                child: const Button(
                  text: 'Log In',
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have account?',
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
                                  const SafeArea(child: SignUp())));
                    },
                    child: const Text(
                      'Sign up',
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
      ),
    );
  }
}
