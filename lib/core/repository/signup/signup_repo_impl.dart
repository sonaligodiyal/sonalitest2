import 'dart:convert';
import 'package:get/get.dart';
import 'package:sonalitest2/core/model/signup_model.dart';
import 'package:sonalitest2/core/repository/signup/signup_repo.dart';
import 'package:sonalitest2/httpServices/http_service.dart';
import 'package:sonalitest2/httpServices/http_services_impl.dart';

class SignupRepoImpl implements SignupRepo{
  late HttpService _httpService;

  SignupRepoImpl(){
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }


  @override
  Future<SignupResponse>signupAPI(String name, String emailId, String password, String phoneNumber) async{
    // TODO: implement loginAPI
    final response = await _httpService.signupAPIRequest(name,emailId,password,phoneNumber);
    Map<String, dynamic> ResponseMap = Map.from(jsonDecode(response.data));
    return SignupResponse.fromJson(ResponseMap);
  }
}