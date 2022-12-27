import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sonalitest2/core/routes_constant.dart';
import 'package:sonalitest2/feature/signup/controller/signup_controller.dart';

//import '../../../core/routes_constant.dart';



class Signup extends GetView<Signupcontroller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          margin: EdgeInsets.all(20),
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("SIGNUP", style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w300),),
                  //Icon(Icons.security, size: 30,color: Colors.green.shade600,)
                ],
              ),
              SizedBox(height: 20,),


              Form(
                key: controller.loginFormKey,
                child: Container(
                  child: Column(

                    children: [

                      TextFormField(
                        controller: controller.nameController,
                        decoration: InputDecoration(
                          labelText: "Enter Name",
                          border: OutlineInputBorder(),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                        controller: controller.emailIdController,
                        decoration: InputDecoration(
                          labelText: "Enter email-ID",
                          border: OutlineInputBorder(),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                          labelText: "Enter password",
                          border: OutlineInputBorder(),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      TextFormField(
                        controller: controller.phoneNumberController,
                        decoration: InputDecoration(
                          labelText: "Phone number",
                          border: OutlineInputBorder(),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          width: 600,
                          // height: 100,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.green.shade600),
                            ),
                            onPressed: () {
                              controller.SignupAPI();
                              Get.toNamed(RouteConstant.login);
                            },
                            child: const Text('Signup',style: TextStyle(color:Colors.white,fontSize: 20),),
                          ),
                        ),
                      ),















                      //     onPressed: () {
                             // Get.toNamed(RouteConstant.fetchData);
                      // controller.SignupAPI();
                         //   },
                           // child: const Text('fetch',style: TextStyle(color:Colors.white,fontSize: 20),),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}