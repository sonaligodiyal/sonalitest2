import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sonalitest2/core/repository/navfirst/navfirst_repo_impl.dart';
import 'package:sonalitest2/feature/navfirstpage/controller/navfirstcontroller.dart';


class navfirstbinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>NavfirstRepoImpl());
    Get.lazyPut(()=>Navfirstcontroller());
    Get.put(Navfirstcontroller());

  }
}