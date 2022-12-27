import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sonalitest2/core/routes_constant.dart';
import 'package:sonalitest2/feature/login/controller/loginController.dart';


class LoginPage extends GetView<Logincontroller> {
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
                  Text("Sign In", style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w300),),
                  Icon(Icons.security, size: 30,color: Colors.green.shade600,)
                ],
              ),
              SizedBox(height: 20,),


              Form(
                key: controller.loginFormKey,
                child: Container(
                  child: Column(

                    children: [

                      TextFormField(
                        controller: controller.emailController,
                        decoration: InputDecoration(
                          labelText: "Email ID",
                          border: OutlineInputBorder(),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15,),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: controller.passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",fillColor: Colors.green.shade600,
                          border: OutlineInputBorder(),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          Obx(
                                () =>
                                Checkbox(
                                  checkColor: Colors.greenAccent,
                                  activeColor: Colors.red,
                                  value: controller.valuefirst.value,
                                  onChanged: (value) {
                                    controller.valuechange(value);
                                  },
                                ),
                          ),
                          Text("Agree"),
                        ],
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
                              controller.validate();
                             // controller.SignupAPI();
                              Get.toNamed(RouteConstant.home);
                            },
                            child: const Text('Sign In',style: TextStyle(color:Colors.white,fontSize: 20),),
                          ),
                        ),
                      ),


                      Text("OR"),
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
                              controller.validate();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: [
                                const Text('Log In with Google',style: TextStyle(color:Colors.white,fontSize: 20),),
                                Icon(Icons.gpp_good_outlined,size: 30,)
                              ],
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),

                      Text("By Signing in you agree to our Terms & Conditions",
                        style: TextStyle(fontSize: 17,
                            fontWeight: FontWeight.w300,
                            color: Colors.black54),),

                      Text("& Privacy Policy", style: TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.black54),),

                      SizedBox(height: 40,),
                      Text("Company not registered? Sign Up",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),

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