import 'package:sonalitest2/core/model/login_model.dart';

abstract class LoginRepo{
  Future<LoginResponse>loginAPI(String emailId, String password);
}



//abstract class LoginRepo{
 // Future<list><LoginResponse> loginAPI(String username, String password)
//}

