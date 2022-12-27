import 'dart:convert';
import 'package:get/get.dart';
import 'package:sonalitest2/core/model/login_model.dart';

import 'package:sonalitest2/core/repository/login/login_repo.dart';
import 'package:sonalitest2/httpServices/http_service.dart';
import 'package:sonalitest2/httpServices/http_services_impl.dart';

class LoginRepoImpl implements LoginRepo{
  late HttpService _httpService;

  LoginRepoImpl(){
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }


  @override
  Future<LoginResponse>loginAPI(String emailId, String password) async{
    // TODO: implement loginAPI
    final response = await _httpService. LoginDataAPIRequest(emailId, password);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return LoginResponse.fromJson(ResponseMap);
  }
}