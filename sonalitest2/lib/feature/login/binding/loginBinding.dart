import 'package:get/get.dart';
import 'package:sonalitest2/feature/login/controller/loginController.dart';


class Loginbinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(Logincontroller());
  }
}
