import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController{
  var emailController = TextEditingController().obs;
  var passwordController = TextEditingController().obs;
  var formKey = GlobalKey<FormState>().obs;
  var userController = TextEditingController().obs;
  var emailController1 = TextEditingController().obs;
  var passwordController1 = TextEditingController().obs;
}