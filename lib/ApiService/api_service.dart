import 'dart:convert';

import 'package:get/get.dart';

import '../modals/current_match_modal.dart';
import 'package:http/http.dart' as http;

class ApiService {
  // static var client = http.Client();

  static var url = "https://api.freefantasy.in/tips/getMatches";
  // static Map<String, dynamic> body = {
  //   "matchStatus": 2,
  //   "offset": 0,
  //   "limit": 20,
  // };
  static Map<String, String> header = {
    "Content-Type": 'text/plain',
  };

  static Future<CurrentMatch?> fetchCurrentMatchesData() async {
    try {
      // final resposne = await http.post(
      //   Uri.parse(url),
      //   body: jsonEncode({
      //     "matchStatus": 2,
      //     "offset": 0,
      //     "limit": 20,
      //   }),
      //   headers: header,
      // );

      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.fields.addAll({'matchStatus': '2', 'offset': '0', 'limit': '20'});

      http.StreamedResponse response = await request.send();
      final data = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        print("response=====>>>>>>>${data}");
        return CurrentMatch.fromJson(jsonDecode(data));
      } else {
        return null;
      }
    } catch (e) {
      print("service==>>>$e");
    }
    return null;
  }
}
