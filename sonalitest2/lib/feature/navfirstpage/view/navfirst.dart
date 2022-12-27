import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sonalitest2/feature/navfirstpage/controller/navfirstcontroller.dart';


class navfirst extends GetView<Navfirstcontroller>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>Container(
        child:ListView.builder(
          itemCount: controller.internDataList.length,
          itemBuilder: (BuildContext context, index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(controller.internDataList[index].name!),
                Text(controller.internDataList[index].emailId!),
                Text(controller.internDataList[index].password!),
                //
                // ElevatedButton(onPressed: (){
                // controller.deleteData(controller.internDataList[index].i!);
                // }, child: Text("Delete")),

              ],
            );
          },),
      ),
      ),
    );
  }
}