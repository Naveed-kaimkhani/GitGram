import 'package:easy_github/ui/Screens/Errors.dart';
import 'package:easy_github/ui/Screens/Homepage.dart';
import 'package:easy_github/ui/Screens/userDetails.dart';
import 'package:easy_github/ui/Screens/Repowebview.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String user_details = '/userDetails';
  static const String Repo_webview = '/webview';
  static const String ErrorScreen = '/Errors';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _buildRoute(Homepage(), settings);
        break;
      case user_details:
        return _buildRoute(userDetails(), settings);
      case Repo_webview:
        return _buildRoute(Repowebview(), settings);
        case ErrorScreen:
        return _buildRoute(Errors(), settings);
      default:
        return _buildRoute(Scaffold(), settings);
    }
  }

  static _buildRoute(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
