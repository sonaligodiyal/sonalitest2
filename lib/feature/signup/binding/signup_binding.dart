import 'package:get/get.dart';
import 'package:sonalitest2/core/repository/signup/signup_repo_impl.dart';
import 'package:sonalitest2/feature/signup/controller/signup_controller.dart';

import '../../navfirstpage/controller/navfirstcontroller.dart';
//import '../../../core/repository/signup/signup_repo_impl.dart';


class Signupbinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> SignupRepoImpl());

    // TODO: implement dependencies
    Get.lazyPut(()=>Navfirstcontroller());
    //Get.lazyPut(()=> SignupRepoImpl());
    Get.put(Signupcontroller());
  }
}