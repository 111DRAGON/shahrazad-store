import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shahrazad_app/pages/sign%20up%20Screen.dart';

import '../models/default button.dart';
import 'LoginScreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
               "images/logo-no-background.png"

              ),
              const SizedBox(
                height: 80,
              ),
              DefaultButton(
                onPressed: () {
                  Get.to(LoginScreen());
                },
                text: "Login".tr,
                icon: Icons.login,
                color: const Color.fromRGBO(39, 104, 139, 1.0),
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultButton(
                onPressed: () {
                  Get.to(SignUpScreen());
                },
                text: "Sign up".tr,
                icon: Icons.person_add_alt_1,
                color:  Get.isDarkMode
                    ? const Color.fromRGBO(40, 104, 139, 1.0)
                    : const Color.fromRGBO(
                    39, 104, 139, 1.0),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
