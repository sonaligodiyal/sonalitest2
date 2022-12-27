import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sonalitest2/core/routes_constant.dart';
import 'core/getPages.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:RouteConstant.dashboard,
      getPages: getpages,

    );
  }
}
