

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
//import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
//import '../nav_home_controller/nav_home_controller.dart';



class NavHomeView extends GetView<Navfirstcontrolle> {
  const NavHomeView({super.key});

  // File? pickedFile;
  // ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(

      body: Obx(() =>
          Center(

            child: SingleChildScrollView(


              // width: double.infinity,
              // height: size.height,
              // decoration: BoxDecoration(color: Colors.blue),

              child: Column(

                  children: [

                    Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          controller.loader.value == true?
                          Center(
                              child: CircularProgressIndicator()) :

                          Container(

                            margin: EdgeInsets.only(top: 15, left: 15),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        // controller.name.value,
                                        controller.loginName.value,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),),
                                      Text(controller.email.value,
                                          // controller.emailId.value,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15)),
                                    ],
                                  ),
                                ),
                                Obx(() => controller.selectedImagePath == '' ? Text("select camera") :
                                Image.file(File(controller.selectedImagePath.value),height: 30,width: 30,),),

                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:Colors.cyanAccent,
                                  /* controller.color.value==true?Colors.red:Colors.grey,*/
                                  child: IconButton(onPressed: () {

                                    /* controller.changecolor();*/

                                    controller.getImage(ImageSource.camera);


                                  }, icon: Icon(Icons.add_a_photo_outlined)),
                                ),

                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(top: 15),),

                          Obx(() => controller.change== true?

                          Container(
                            width: size.width * 0.9,
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),

                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),),
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 20,),),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.orange),
                              ),
                              onPressed: (){
                                controller.Time();
                                controller.currentAddress();
                                controller.todayDate();
                                // controller.TimeOut();
                                controller.getImage(ImageSource.camera);
                              },
                              child: Text("TimeIn"),),
                          )

                              :
                          Container(
                            width: size.width * 0.9,
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),

                            child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20,),),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.orange),
                                ),

                                onPressed: (){
                                  // controller.Time();
                                  controller.currentAddress();
                                  controller.todayDate();
                                  controller.TimeOut();
                                  controller.getImage(ImageSource.camera);

                                },
                                child: Text("TimeOut")),
                          ),
                          ),

                          /*Container(
                            width: size.width * 0.9,
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),

                            child: ClipRRect(

                              child: ElevatedButton(

                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20,),),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.orange),
                                ),
                                onPressed: () {

                                  controller.Time();
                                  controller.currentAddress();
                                  controller.TimeOut();
                                },
                                child: Obx(()=>controller.change==true?Text("Time In", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700)):
                                Text("Time Out", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700)),),

                                *//*child: Text("Time Out", style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20,),),*//*

                              ),
                            ),
                          ),
                          Container(
                            width: size.width * 0.9,
                            margin: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),

                            child: ClipRRect(

                              child: ElevatedButton(

                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20,),),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.orange),
                                ),
                                onPressed: () {

                                  controller.currentAddress();
                                  controller. TimeOut();
                                },
                                child:Text("Time Out", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700)),),

                                *//*child: Text("Time Out", style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20,),),*//*

                              ),
                            ),*/







                          Padding(padding: EdgeInsets.only(top: 30),),


                          Container(

                            child: Card(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(

                                children: [

                                  Container(

                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                                      children: [
                                        Icon(
                                          Icons.add_location_sharp, color: Colors.blue,
                                          size: 30,),
                                        TextButton(onPressed: () {

                                        },
                                          child: Text("Your Location", style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),),),
                                        Icon(Icons.autorenew, color: Colors.blue,
                                          size: 30,),
                                      ],
                                    ),
                                  ),

                                  Padding(padding: EdgeInsets.only(top: 25,),),

                                  Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Text(controller.currentAddress.value,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,),
                                          textAlign: TextAlign.center,),

                                        // Text(DateTime.now().toString(),style: const TextStyle(fontSize: 24),),
                                        Text(DateFormat("dd-MM-yyyy kk:mm:ss a").format(
                                            DateTime.now()), style: TextStyle(
                                            fontWeight: FontWeight.bold),),
                                        // Text("Gyan Ganga Building Jayendra Ganj Rd,"),
                                        // Text("Shinde Ki Chhawani Gwalior,Madhya"),
                                        // Text("Pradesh,474009, India"),
                                        // Text("(date upto 11.02am)"),

                                        Padding(padding: EdgeInsets.only(top: 10),),

                                        Container(
                                          width: size.width * 0.6,
                                          margin: EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 100,),

                                          child: ClipRRect(

                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(
                                                        5),
                                                  ),),
                                                padding: MaterialStateProperty.all(
                                                  EdgeInsets.symmetric(
                                                    vertical: 10, horizontal: 10,),),
                                                backgroundColor: MaterialStateProperty
                                                    .all(Colors.green),
                                              ),
                                              onPressed: () {

                                                // controller.currentAddress.value;

                                              },

                                              child: Text("Within Geofence",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,),),

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),

                            ),

                          ),


                        ],
                      ),


                    ),

                  ]),


            ),
          ),
      ),

    );
  }

}

// Image.file(File(controller.selectedImagePath.value),




























//import 'package:flutter/material.dart';
//import 'package:get/get_state_manager/get_state_manager.dart';
//import 'package:get/get_state_manager/src/simple/get_view.dart';
//import 'package:sonalitest2/feature/navfirstpage/controller/navfirstcontroller.dart';


//class navfirst extends GetView<Navfirstcontroller>{


//  @override
//  Widget build(BuildContext context) {
  //  return Scaffold(
    //  body: Obx(()=>Container(
  //      child:ListView.builder(
    //      itemCount: controller.internDataList.length,
   //       itemBuilder: (BuildContext context, index){
     //       return Row(
       //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
         //     children: [

           //     Text(controller.internDataList[index].name!),
             //   Text(controller.internDataList[index].emailId!),
               // Text(controller.internDataList[index].password!),

                //
                // ElevatedButton(onPressed: (){
                // controller.deleteData(controller.internDataList[index].i!);
                // }, child: Text("Delete")),
    //          ],
      //      );
//          },),
  //    ),
    //  ),
   // );
  //}
//}