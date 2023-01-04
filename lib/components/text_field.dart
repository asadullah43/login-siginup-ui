import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hintText,
    required this.fieldLeadingIcon,
  }) : super(key: key);
  final String hintText;
  final Icon fieldLeadingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: const Color(0xffF8F9FA),
          filled: true,
          hintText: hintText,
          prefixIcon: fieldLeadingIcon,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffE4E7EB)),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
 // const SizedBox(height: 20),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 20),
        //   child: TextFormField(
        //     decoration: InputDecoration(
        //         fillColor: const Color(0xffF8F9FA),
        //         filled: true,
        //         hintText: 'Password',
        //         prefixIcon: const Icon(
        //           Icons.lock,
        //           color: Color(0xff323F4B),
        //         ),
        //         suffixIcon: const Icon(
        //           Icons.visibility_off,
        //           color: Color(0xff323F4B),
        //         ),
        //         enabledBorder: OutlineInputBorder(
        //             borderSide: const BorderSide(color: Color(0xffE4E7EB)),
        //             borderRadius: BorderRadius.circular(10))),
        //   ),
        // ),