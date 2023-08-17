
import 'package:flutter/material.dart';
import 'package:food_zoon/special_offers/models/special_offers_model.dart';
import 'package:food_zoon/special_offers/repository/special_offers_repository.dart';

class SpecialOffersController extends ChangeNotifier{
  List<SpecialOffersModel>? specialOffersDataList;
  bool isLoading = true;

  getData() async{
    isLoading = true;
    specialOffersDataList = await SpecialOffersRepository.getSpecialOffersData();
    isLoading = false;
    notifyListeners();
  }

}