import 'dart:convert';
import 'package:get/get.dart';
import 'package:sonalitest2/core/model/userData_response.dart';
import 'package:sonalitest2/core/repository/homepage/homepage_repo.dart';
import 'package:sonalitest2/httpServices/http_service.dart';
import 'package:sonalitest2/httpServices/http_services_impl.dart';

class HomepageRepoImpl implements HomepageRepo{
  late HttpService _httpService;

  HomepageRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<UserDataResponse>?> fetchDataAPI() async{
    // TODO: implement fetchDataAPI

    try {
      final response = await _httpService.fetchDataRequest();     if (response.statusCode == 200) {
        return FetchDataResponseFromJson(response.toString());
      }
    } on Exception catch (e) {
      print(e);
      return null;
    }
    return null;
  }
  List<UserDataResponse> FetchDataResponseFromJson(String str) => List<UserDataResponse>.from(json.decode(str).map((x) => UserDataResponse.fromJson(x)));

}