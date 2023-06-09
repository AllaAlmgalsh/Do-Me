import 'package:flutter/material.dart';
import '../screens/login.dart';
import '../screens/recycle_bin.dart';
import '../screens/tabs_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RecycleBin.id:
        return MaterialPageRoute(builder: (context) {
          return const RecycleBin();
        });
      case TabsScreen.id:
        return MaterialPageRoute(builder: (context) {
          return TabsScreen();
        });
      case Login.id:
        return MaterialPageRoute(builder: (context) {
          return Login();
        });
      default:
        return null;
    }
  }
}
