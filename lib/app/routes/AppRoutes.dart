import 'package:easy_github/ui/Screens/About.dart';
import 'package:easy_github/ui/Screens/Errors.dart';
import 'package:easy_github/ui/Screens/Homepage.dart';
import 'package:easy_github/ui/Screens/Wellcome.dart';
import 'package:easy_github/ui/Screens/followingview.dart';
import 'package:easy_github/ui/Screens/friends.dart';
import 'package:easy_github/ui/Screens/frndview.dart';
import 'package:easy_github/ui/Screens/repoview.dart';
import 'package:easy_github/ui/Screens/tabbar.dart';
import 'package:easy_github/ui/Screens/userDetails.dart';
import 'package:easy_github/ui/Screens/Repowebview.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = '/';
  static const String user_details = '/userDetails';
  static const String Repo_webview = '/webview';
  static const String ErrorScreen = '/Errors';
  static const String reposs='/repoview';
static const String about='/About';
static const String frnds='/frndview';
static const String foling='/followingview';
static const String tabbarr='/tabbar';
static const String homepage='/Homepage';
static const String well='/Wellcome';
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
        case reposs:
        return _buildRoute(repoview(), settings);
        case about:
        return _buildRoute(About(), settings);
        case frnds:
        return _buildRoute(frndview(), settings);
        case foling:
        return _buildRoute(followingview(), settings);
        
        case tabbarr:
        return _buildRoute(tabbar(), settings);
        
        case homepage:
        return _buildRoute(Homepage(), settings);
        
        case well:
        return _buildRoute(Wellcome(), settings);
        
      default:
        return _buildRoute(Scaffold(), settings);
    }
  }

  static _buildRoute(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}
