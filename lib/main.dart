import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import "package:http/http.dart" as http;


void main() async {

  String getit = await getJson();
  debugPrint(getit);

  runApp(MaterialApp(
    title: "json",
    home: Scaffold(appBar: AppBar(title: Text("json"),centerTitle: true,),),
  ));
}



Future<String> getJson() async{

  String url = "https://jsonplaceholder.typicode.com/posts";
  http.Response response = await http.get(url);

  return json.decode(response.body).toString();


}