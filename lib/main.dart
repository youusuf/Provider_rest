import 'package:flutter/material.dart';
import 'screen/home_page.dart';
import 'package:provider/provider.dart';
import 'providers/prov_data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("APP Bar"),
        ),
        body: ChangeNotifierProvider(
          create:(context)=>Data(),
          child: HomePage(),
        ),
      ),
    );
  }
}
