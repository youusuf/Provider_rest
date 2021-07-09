//api https://ipapi.co/45.127.235.153/json/
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_provider/models/api_model.dart';
class APIManager{
  Future<Welcome> getData()async{
    var url = Uri.parse("https://ipapi.co/45.127.235.153/json/");
    var response =await http.get(url);
    var body = json.decode(response.body);
    var data =  Welcome.fromJson(body);
    return data;
  }
}


