import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/Cart Screen.dart';
import '../pages/Category Screen.dart';
import '../pages/goodsScreen.dart';
class HomePageController extends GetxController{
  var currentIndex = 1.obs ;
  List<Widget>screen=[
    CartScreen(),
    GoodsScreen(),
    CategoryScreen(),
  ];
}