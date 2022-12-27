import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:sonalitest2/core/routes_constant.dart';

class Dashboardcontroller extends  GetxController{
  logging(){
    Get.toNamed(RouteConstant.login);
  }


  logging2(){
    Get.toNamed(RouteConstant.signup);
  }
}