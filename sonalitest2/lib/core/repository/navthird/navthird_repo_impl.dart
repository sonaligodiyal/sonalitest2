import 'dart:convert';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sonalitest2/core/model/navfirstpage.dart';
import 'package:sonalitest2/core/repository/navthird/navthird_repo.dart';
import 'package:sonalitest2/httpServices/http_service.dart';
import 'package:sonalitest2/httpServices/http_services_impl.dart';

class NavthirdRepoImpl implements NavthirdRepo {
  late HttpService _httpService;

  NavthirdRepoImpl() {
    _httpService = Get.put(HttpServiceImpl());
    _httpService.init();
  }

  @override
  Future<List<FetchDataResponse>?> fetchDataAPI(String myNumber) async {
    final response = await _httpService.fetchDataAPIRequest( myNumber);
    return  FetchDataResponseFromJson(response.toString());
  }
// return null;
}
List<FetchDataResponse> FetchDataResponseFromJson(String str) => List<FetchDataResponse>.from(json.decode(str).map((x) => FetchDataResponse.fromJson(x)));