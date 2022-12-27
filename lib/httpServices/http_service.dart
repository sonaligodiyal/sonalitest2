import 'package:dio/dio.dart';

abstract class HttpService {
  void init();

//  Future<Response> loginAPIRequest(String email, String password);
  Future<Response> signupAPIRequest(String name, String emailId, String password, String phoneNumber);
  Future<Response> fetchDataRequest();
  Future<Response> fetchDataAPIRequest(String emailId);
  Future<Response> LoginDataAPIRequest(String emailId, String password);

}




//  Future<Response> deleteAPIRequest(String id);
//  Future<Response> updateDataRequet(String id);
// Future<Response> fetchDataAPI();



