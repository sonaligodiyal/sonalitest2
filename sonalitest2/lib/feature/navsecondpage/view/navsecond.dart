import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:sonalitest2/feature/homepage/controller/homeController.dart';


class navsecond extends GetView<HomeController> {
  const navsecond({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text("wellcome"),


              //   Get.toNamed(Routes.login);


              DataTable(columns:[
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Email'),),
                DataColumn(label: Text('Password'),),
                DataColumn(label: Text('Phone'),),
              ],

                  //  rows: controller.fetchData.map((user){

                  rows:[

                    DataRow(cells: [
                      DataCell(Text("")),
                      DataCell(Text("")),
                      DataCell(Text("")),
                      DataCell(Text("")),
                    ]),

                    DataRow(cells: [
                      DataCell(Text("")),
                      DataCell(Text("")),
                      DataCell(Text("")),
                      DataCell(Text("")),
                    ]),
                  ]
              )

            ],
          ),
        ),
      ),
    );
  }
}