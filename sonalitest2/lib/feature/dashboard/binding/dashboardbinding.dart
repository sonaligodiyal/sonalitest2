import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sonalitest2/feature/dashboard/controller/dashboardcontroller.dart';

class Dashboardbinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Dashboardcontroller());
  }

}