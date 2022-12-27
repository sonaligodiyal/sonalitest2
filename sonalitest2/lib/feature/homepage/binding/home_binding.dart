import 'package:get/get.dart';
import 'package:sonalitest2/core/repository/homepage/homepaage_repo_impl.dart';
import 'package:sonalitest2/core/repository/signup/signup_repo_impl.dart';
import 'package:sonalitest2/feature/homepage/controller/homeController.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>HomepageRepoImpl());

    Get.put(HomeController());

  }
}

