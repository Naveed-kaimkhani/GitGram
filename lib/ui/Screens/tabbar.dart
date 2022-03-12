import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/ui/Screens/followingview.dart';
import 'package:easy_github/ui/Screens/frndview.dart';
import 'package:flutter/material.dart';

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onTap: () =>
                Navigator.of(context).pushNamed(AppRoutes.user_details),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: [
              Text(
                "Followers",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text("Following",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            frndview(),
            followingview(),
          ],
        ),
      ),
    );
  }
}
