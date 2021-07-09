import 'package:flutter/cupertino.dart';
import 'package:rest_provider/models/api_model.dart';

class Data extends ChangeNotifier{

  bool _isProcessing = true;
  bool get isProcessing =>_isProcessing;
  Welcome _welcome;

  setIsProcessing(bool value){
    _isProcessing = value;
    notifyListeners();

  }


  Welcome get welcome =>_welcome;


  setWelcomeList(Welcome welcome){
    _welcome = welcome;
    notifyListeners();

  }
  Welcome getWelcomeIndex()=>_welcome;

}

