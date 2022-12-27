import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sonalitest2/core/repository/navsecond/navsecond_repo_impl.dart';
import 'package:sonalitest2/feature/navsecondpage/controller/navsecondcontroller.dart';


class navsecondbinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>NavsecondRepoImpl());
    Get.lazyPut(()=>Navsecondcontroller());
    Get.put(Navsecondcontroller());

  }

}