import 'package:easy_github/app/data/models/user_profile.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    user_profile? userinfo = context.watch<Userprovider>().user;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox.expand(

            child:Image.network(userinfo!.avatar_url??"No image",fit: BoxFit.cover,),
          )
        ],
      ),
    );

    
  }

    }


