import 'package:easy_github/app/data/models/user_profile.dart';
import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class userDetails extends StatelessWidget {
  const userDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    user_profile? userinfo = context.watch<Userprovider>().user;

    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            ListTile(
                isThreeLine: true,
                leading: Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage(userinfo!.avatar_url ?? 'No image'),
                  ),
                ),
                title: Text(
                  userinfo.name ?? 'No name',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Repositories",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          userinfo.reposi.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Following",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          userinfo.following.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Followers",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          userinfo.followers.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text(userinfo.email ?? 'Not mentioned'),
                ),
                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text(userinfo.location ?? 'Not mentioned'),
                ),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text(userinfo.company ?? 'Not mentioned'),
                ),
                ListTile(
                  leading: Icon(Icons.update),
                  title: Text(userinfo.updated_at ?? 'Not mentioned'),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(children: [
              SizedBox(
                width: 20,
              ),
              Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[10],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        splashColor: Colors.grey[10],
                        onTap: () =>
                            Navigator.of(context).pushNamed(AppRoutes.tabbarr),
                        child: Ink.image(
                          alignment: Alignment.bottomRight,
                          image: AssetImage('lib/assets/code.png'),
                          height: 70,
                          width: 70,
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Repos",
                      style: TextStyle(
                        fontFamily: 'Itim',
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[10],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        // radius:8.0,
                        splashColor: Colors.grey[10],
                        onTap: () =>
                            Navigator.of(context).pushNamed(AppRoutes.about),
                        child: Ink.image(
                          alignment: Alignment.bottomRight,
                          image: AssetImage('lib/assets/usr.png'),
                          height: 70,
                          width: 70,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                        fontFamily: 'Itim',
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[10],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        splashColor: Colors.grey[10],
                        onTap: () =>
                            Navigator.of(context).pushNamed(AppRoutes.tabbarr),
                        child: Ink.image(
                          alignment: Alignment.bottomRight,
                          image: AssetImage('lib/assets/nwt.png'),
                          height: 70,
                          width: 70,
                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Friends",
                      style: TextStyle(
                        fontFamily: 'Itim',
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              )
            ])
          ],
        ));
  }
}
