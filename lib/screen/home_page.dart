import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:rest_provider/models/api_model.dart';
import 'package:rest_provider/providers/prov_data.dart';
import 'package:rest_provider/services/network.dart';

import 'package:rest_provider/widgets/card_widget.dart';
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future<Welcome> data;

  getData()async{
    var provider = Provider.of<Data>(context,listen: false);
    var response = await APIManager().getData();
    provider.setWelcomeList(response);
    provider.setIsProcessing(false);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder:(context,data,child){
        Welcome welcome = data.getWelcomeIndex();
        return data.isProcessing?Center(
          child: CircularProgressIndicator(),
        ):ListView(
          children: [
            CardWidget(welcome.ip),
            CardWidget(welcome.latitude.toString()),
            CardWidget(welcome.country),
            CardWidget(welcome.city),
            CardWidget(welcome.countryCapital),
            CardWidget(welcome.continentCode),
            CardWidget(welcome.countryArea.toString()),
            CardWidget(welcome.latitude.toString()),
          ],
        );
      },
    );
  }
}
