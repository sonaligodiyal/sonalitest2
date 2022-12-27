import 'package:sonalitest2/core/model/navfirstpage.dart';

abstract class NavthirdRepo{
  // Future<LoginResponse> deleteAPI(String id);
  // Future<LoginResponse> signupAPI(String username, String emailId, String password,String phoneNumber);
  Future<List<FetchDataResponse>?> fetchDataAPI(String myNumber);
}