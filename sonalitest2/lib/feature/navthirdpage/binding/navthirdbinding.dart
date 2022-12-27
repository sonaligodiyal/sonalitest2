import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:sonalitest2/core/repository/navthird/navthird_repo_impl.dart';
import 'package:sonalitest2/feature/navthirdpage/controller/navthirdcontroller.dart';


class navthirdbinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>NavthirdRepoImpl());
    Get.lazyPut(()=>Navthirdcontroller());
    Get.put(Navthirdcontroller());

  }

}