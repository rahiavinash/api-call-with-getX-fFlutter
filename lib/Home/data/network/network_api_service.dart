import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:rest_api_call/Home/data/appExceptions.dart';
import 'package:rest_api_call/Home/data/network/baseapi_service.dart';
import 'package:http/http.dart' as http;

class NetworkkApiService extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    }
print(responseJson);
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw InvalidUrlException;

      default:
        throw FetchDataException;
    }
  }

  @override
  Future postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: jsonEncode(data))
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponses(response);
    } on SocketException {
      throw InternetException('');
    }

    return responseJson;
  }

  dynamic returnResponses(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw InvalidUrlException;

      default:
        throw FetchDataException;
    }
  }
}
