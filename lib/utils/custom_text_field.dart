import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.phoneNum,
    required this.validtorText,
    required this.hintText,
    this.obscure,
  });

  final TextEditingController phoneNum;
  final String validtorText;
  final String hintText;
  final bool? obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure ?? false,
      cursorColor: Colors.black,
      controller: phoneNum,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return validtorText;
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        hintStyle: GoogleFonts.ubuntu(),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
