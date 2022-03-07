import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main()=>runApp( myApp());

class myApp extends StatelessWidget {
   myApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<Userprovider>(
      create:(_)=>Userprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Gitbook",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        brightness: Brightness.dark 
        ),
        
        initialRoute: AppRoutes.home,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}