import 'package:ai_project/page/home/home_page.dart';
import 'package:ai_project/routes/slide_left_route.dart';
import 'package:flutter/material.dart';

class CustomRoute {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    final arg = settings.arguments;
    switch(settings.name){
      case HomePage.routeName:
        return SlideLeftRoute(HomePage(data: arg,));
    }
  }
}