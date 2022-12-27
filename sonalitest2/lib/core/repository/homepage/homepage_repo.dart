
import 'package:sonalitest2/core/model/userData_response.dart';

abstract class HomepageRepo{
  Future<List<UserDataResponse>? >fetchDataAPI();
}