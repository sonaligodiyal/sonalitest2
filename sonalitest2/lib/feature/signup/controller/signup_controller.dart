import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sonalitest2/core/repository/signup/signup_repo_impl.dart';
//import 'package:myfile/core/repository/signup/signup_repo_impl.dart';

class Signupcontroller extends GetxController{
  final loginFormKey = GlobalKey<FormState>();

  late TextEditingController nameController  = TextEditingController();
  late TextEditingController emailIdController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  late TextEditingController phoneNumberController = TextEditingController();



// Late SignupRepo _signupRepo;
  //var email = sonali

  SignupRepoImpl _signUpRepo = Get.find<SignupRepoImpl>();
  final GlobalKey<FormState> loginFormkey = GlobalKey<FormState>();
  SingleChildScrollView(){
    _signUpRepo = Get.find<SignupRepoImpl>();
  }
  SignupAPI()async{
    var isValide = loginFormKey.currentState?.validate();
    if(isValide==true){
      final responce = await _signUpRepo.signupAPI(nameController.text, emailIdController.text, passwordController.text, phoneNumberController.text);
      print("Responce print");

      print (isValide);
    }
  }
}