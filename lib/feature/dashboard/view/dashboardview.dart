import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sonalitest2/feature/dashboard/controller/dashboardcontroller.dart';


class Dashboard extends GetView<Dashboardcontroller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            // elevation: 10,

            child: Column(
              children: [
                Image.asset("assests/trackemployee.jpg",height: 300,width: 400,),
                Text("Track Employee ",style:TextStyle(fontWeight: FontWeight.w800,fontSize: 30,color: Colors.black),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Attendance with Time",style:TextStyle(fontWeight: FontWeight.w800,fontSize: 25,color: Colors.black),),
                  //  Text("Time",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25,color: Colors.white,backgroundColor: Colors.green),)
                  ],
                ),
              //
                //  Icon(Icons.linear_scale,color: Colors.yellowAccent,size:50,),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height:54, //height of button
                        width:300, //width of button
                        child:ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green.shade600, //background color of button
                                side: BorderSide(width:1), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.all(20) //content padding inside button
                            ),
                            onPressed: (){
                              controller.logging();
                              //code to execute when this button is pressed.
                            },
                            child: Text("Login", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700))
                        )
                    )
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height:54, //height of button
                        width:300, //width of button
                        child:ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white, //background color of button
                                side: BorderSide(width:2, color:Colors.green.shade600), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                padding: EdgeInsets.all(20) //content padding inside button
                            ),
                            onPressed: (){
                              controller.logging2();
                              //code to execute when this button is pressed.
                            },
                            child: Text("Register Organization", style: TextStyle(color: Colors.green.shade600,fontWeight: FontWeight.w700),)
                        )
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}