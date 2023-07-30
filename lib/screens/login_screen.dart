import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realtimechat/screens/bottom_nav_screen.dart';

import '../data/network_utils.dart';
import '../data/urls.dart';
import '../utils/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneNum = TextEditingController();
  final TextEditingController passWord = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  Future<void> _login() async {
    setState(() {});
    final result = await NetWorkUtils.postMethod(URLs.loginUrl, body: {
      'phone': phoneNum.text,
      'password': passWord.text,
    }, onUnAuthorize: () {
      // Get.showSnackbar(const GetSnackBar(
      //   title: 'Error',
      //   message: 'phone number & password incorrect',
      //   duration: Duration(seconds: 2),
      // ));
    });
    setState(() {});
    if (result != null && result['success'] == true) {
      Get.to(() => const BottomNavScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Form(
              key: _globalKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // text
                  Text(
                    'Login Screen',
                    style: GoogleFonts.ubuntu(fontSize: 30),
                  ),
                  const SizedBox(height: 30),

                  // username
                  CustomTextWidget(
                    phoneNum: phoneNum,
                    hintText: 'phone number',
                    validtorText: 'wrong phone number',
                  ),
                  const SizedBox(height: 10),

                  // password
                  CustomTextWidget(
                    obscure: true,
                    phoneNum: passWord,
                    hintText: 'password',
                    validtorText: 'wrong password',
                  ),

                  const SizedBox(height: 30),

                  // button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      onPressed: () async {
                        if (_globalKey.currentState!.validate()) {
                          _login();
                        }
                      },
                      child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
