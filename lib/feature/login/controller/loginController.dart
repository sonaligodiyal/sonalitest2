import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Logincontroller extends GetxController{
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool  valuefirst = false.obs;


  validate(){
    if (loginFormKey.currentState!.validate()) {
      print("sonali");
    }
  }

  valuechange(value) {
    valuefirst.value = value;
  }

}