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
            child: Image.network(
              userinfo!.avatar_url ?? "No image",
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.22,
              minChildSize: 0.1,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: 32, right: 32, top: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipOval(
                                    child: Image.network(
                                  userinfo.avatar_url ?? "",
                                  fit: BoxFit.cover,
                                )),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Text(
                            "About",
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            userinfo.bio ?? "",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
