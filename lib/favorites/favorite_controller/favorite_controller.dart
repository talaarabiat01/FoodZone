import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_zoon/favorites/favorite_model/favorite_model.dart';
import 'package:food_zoon/favorites/favorite_repository/favorite_repository.dart';

class MyFavoriteController extends ChangeNotifier{

  List<FavoriteDataModel>? favListData;

  bool isLoading = true;

  void getFavData() async{
    isLoading = true;
    favListData = await MyFavRepository.getFavData();
    isLoading = false;
    log('${favListData?.length}');
    notifyListeners();
  }

}