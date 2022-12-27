import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:sonalitest2/core/url_constant.dart';
import 'package:sonalitest2/httpServices/http_service.dart';

class HttpServiceImpl implements HttpService{
  late Dio _dio;
  @override
  void init() {
    _dio = Dio(BaseOptions(baseUrl: URLConstant.baseUrl));
  }


  @override
  Future<Response> signupAPIRequest(String name, String emailId, String password, String phoneNumber) async {
    Response response;
    try {
      print(URLConstant.baseUrl+URLConstant.signup+'name=$name&emailId=$emailId&password=$password&phone=$phoneNumber');
      response = await _dio.post(URLConstant.baseUrl+URLConstant.signup+'name=$name&emailId=$emailId&password=$password&phone=$phoneNumber');
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }
    return response;
  }


  @override
  Future<Response> fetchDataAPIRequest(String email) async{
  Response response;
  try
  {
  response = await _dio.get('${URLConstant.fetchDataTest}emailId=$email');
  } on DioError catch (e)
  {
  throw Exception(e.message);
  }
  return response;
  }


  @override
  Future<Response> fetchDataRequest() async{
    // TODO: implement fetchDataRequest
    Response response;
    // TODO: implement updateDataRequet
    try{
      print(URLConstant.baseUrl+URLConstant.fetchDataTest+'number=7566697483');
      response = await _dio.get('${URLConstant.fetchDataTest}number=7566697483');
    } on DioError catch(e){
      throw Exception(e.message);
    }
    return response;
  }

  @override
  Future<Response> LoginDataAPIRequest(String emailId, String password) async{
    // TODO: implement LoginDataAPIRequest
    Response response;
    try{
      print(URLConstant.baseUrl+URLConstant.loginData+"userName$emailId&password$password");
      response = await _dio.get(URLConstant.loginData+"userName$emailId&password$password");
    } on DioError catch(e){
      throw Exception(e.message);
    }
    return response;
  }

}























// Future<Response> deleteAPIRequest(String id) async{
//  // TODO: implement id
  //Response response;
//  try {
 // print(URLConstant.baseUrl+URLConstant.deleteDataIntern+'id=$id');
 // response = await _dio.post(URLConstant.baseUrl+URLConstant.deleteDataIntern+'id=$id');
 // } on DioError catch (e) {
 // print(e.message);
 // throw Exception(e.message);
 // }
 // return response;
 // }

//  @override
 // Future<Response> updateDataRequet(String id) async{
 // Response response;
 // // TODO: implement updateDataRequet
 // try{
 // print(URLConstant.baseUrl+URLConstant.updateDataIntern+'id=$id');
 // response = await _dio.get('${URLConstant.updateDataIntern}id=$id');
 // } on DioError catch(e){
 // throw Exception(e.message);
 // }
 // return response;
 // }




  //@override
  //Future<Response> deleteAPIRequest(String id) {
    // TODO: implement deleteAPIRequest
  //  throw UnimplementedError();
//  }

 // @override
  //Future<Response> fetchDataAPIRequest(String emailId) async {
   // Response response;
   // try {
     // print("${URLConstant.baseUrl+URLConstant.fetchDataInterns}emailId=$emailId");
     // response = await _dio.get("${URLConstant.fetchDataInterns}emailId=$emailId");
    //} on DioError catch (e) {
      // print(e.message);
     // throw Exception(e.message);
    //}
   // return response;
  //}
