//import 'dart:html' ;
import 'dart:io' ;
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Repowebview extends StatefulWidget {
  const Repowebview({ Key? key }) : super(key: key);

  @override
  _webviewState createState() => _webviewState();
}

class _webviewState extends State<Repowebview> {
 @override
 void initState() {
   print("In init");
   super.initState();
   
   if(Platform.isAndroid) WebView.platform=SurfaceAndroidWebView();
 }
  @override
  Widget build(BuildContext context) {
    print("build me");
   final repourl=ModalRoute.of(context)!.settings.arguments as String?;
    print("in build");
    return WebView(
      initialUrl: repourl,
    );
  }
}