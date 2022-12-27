import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sonalitest2/core/routes_constant.dart';
import 'package:sonalitest2/feature/dashboard/binding/dashboardbinding.dart';
import 'package:sonalitest2/feature/dashboard/view/dashboardview.dart';
import 'package:sonalitest2/feature/homepage/view/home_view.dart';
import 'package:sonalitest2/feature/login/binding/loginBinding.dart';
import 'package:sonalitest2/feature/login/view/loginView.dart';
import 'package:sonalitest2/feature/signup/binding/signup_binding.dart';
import 'package:sonalitest2/feature/signup/view/signup_view.dart';
import '../feature/homepage/binding/home_binding.dart';


List<GetPage> getpages =[

  GetPage(
      name: RouteConstant.dashboard,
      page: () => Dashboard(),
      binding: Dashboardbinding()
  ),

  GetPage(
      name: RouteConstant.signup,
      page: () => Signup(),
      binding: Signupbinding()
  ),

  GetPage(
      name: RouteConstant.home,
      page: () => HomeView(),
      binding: HomeBinding()
  ),

  GetPage
    (name: RouteConstant.login,
      page:()=> LoginPage(),
      binding: Loginbinding()
  ),

];