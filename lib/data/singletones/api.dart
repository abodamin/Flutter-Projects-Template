import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:projects_template/app/globals.dart';
import 'package:projects_template/data/api_models/example_model.dart';

class ApiClient {
  ApiClient._();

  static final ApiClient apiClient = ApiClient._();
  static final http.Client _httpClient = http.Client();
  static const String _BASE_URL = "https://api.themoviedb.org";
  static final Logger _mLogger = Logger();

  static final Map<String, String> _appHeader = {
    'Content-type': 'application/json',
    'token': mUserToken,
  };

  /// use this method for GET requests, helps in making global change on all GET calls.
  _getUrl(String url, {Map<String, String> headers, bool printResponse}) async {
    final response = await _httpClient.get(
      url,
      headers: headers ?? _appHeader,
    );
    if(printResponse??false){
      print("____$url >> " + response.body);
    }
    return response;
  }

  /// use this method for POST requests, helps in making global change on all POST calls.
  _postUrl(String url, body, {Map<String, String> headers, bool printResponse}) async {
    final response = await _httpClient.post(
      url,
      body: body,
      headers: headers ?? _appHeader,
    );

    if(printResponse??false){
      print("____$url >> " + response.body);
    }
    return response;
  }

  //TODO: PUT, DELETE

  Future<Example> getSomething() async {
    //Use This header or appHeader
    // Map<String, String> header = {
    //   'Content-type': 'application/json',
    // };

    try {
      final response = _getUrl(
        "$_BASE_URL",
        // headers: header,
      );

      final parsed = json.decode(response.body);
      return Example.fromJson(parsed);
    } on SocketException {
      return Future.error("______check your internet connection______");
    } on http.ClientException {
      return Future.error("______check your internet connection______");
    } catch (e) {
      _mLogger.e(e);
      return Future.error("______Server Error______");
    }
  }

  Future<Example> postSomething() async {
    //Use This header or appHeader
    // Map<String, String> header = {
    //   'Content-type': 'application/json',
    // };

    try {
      final response = _postUrl(
        "$_BASE_URL",
        {"":""}
        // headers: header,
      );

      final parsed = json.decode(response.body);
      return Example.fromJson(parsed);
    } on SocketException {
      return Future.error("______check your internet connection______");
    } on http.ClientException {
      return Future.error("______check your internet connection______");
    } catch (e) {
      _mLogger.e(e);
      return Future.error("______Server Error______");
    }
  }
}


