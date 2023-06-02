import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart.';
import 'package:shahrazad_app/pages/LoginScreen.dart';
import 'package:shahrazad_app/pages/homePageScreen.dart';
import '../controller/RegistrationController.dart';
import '../models/default Text Form Field.dart';
import '../models/default button.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetX<RegistrationController>(
            init: RegistrationController(),
            builder: (controller) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: controller.formKey.value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [


                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 40,
                              color: Get.isDarkMode
                                  ? const Color.fromRGBO(253, 253, 253, 1.0)
                                  : const Color.fromRGBO(1, 29, 33, 1.0),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DefaultTextFormField(

                            controller: controller.userController.value,
                            type: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return " user must not be empty";
                              }
                              return null;
                            },
                            labelText: "User".tr,
                            obscureText: true,
                            prefixIcon: Icons.person,
                          ),
                          const SizedBox(height: 20,),
                          DefaultTextFormField(
                            controller: controller.emailController1.value,
                            type: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains("@")) {
                                return "Email Address can not be empty";
                              }
                              return null;
                            },
                            labelText: "Email Address".tr,
                            prefixIcon: Icons.email,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DefaultTextFormField(
                            suffixIcon: CupertinoIcons.eye,
                            controller: controller.passwordController1.value,
                            type: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return " Password must not be empty";
                              }
                              return null;
                            },
                            labelText: "Password".tr,
                            obscureText: true,
                            prefixIcon: Icons.lock,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          DefaultButton(
                            onPressed: () {
                              if (controller.formKey.value.currentState!
                                  .validate()) {
                                Get.to(HomePageScreen());
                              }
                            },
                            icon: Icons.login_outlined,
                            text: "Sign UP".tr,
                            color: null,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "If You Have an Account ".tr,
                                style: const TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Get.to(LoginScreen());
                                  },
                                  child: Text(
                                    ("click here".tr),
                                    style: const TextStyle(
                                        color: Color(0xff26688B), fontSize: 16),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
