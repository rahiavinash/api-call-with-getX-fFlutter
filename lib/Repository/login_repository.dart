import 'package:rest_api_call/Home/data/network/network_api_service.dart';
import 'package:rest_api_call/Home/res/app_url/app_url.dart';

class LoginRepository {
  final _apiService = NetworkkApiService();

  Future<dynamic> LoginApi(var data) async {
    dynamic response = _apiService.postApi(data, AppUrl.loginApi);
    return response;
  }
}
