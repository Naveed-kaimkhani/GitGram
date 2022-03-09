import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/data/models/user_profile.dart';
import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:easy_github/ui/Screens/friends.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class frndview extends StatefulWidget {
  String? name;
  frndview({this.name});

  @override
  State<frndview> createState() => _repoviewState();
}

class _repoviewState extends State<frndview> {
  @override
  Widget build(BuildContext context) {
    List<repos?> reposInfo = context.watch<Userprovider>().repo;
    user_profile? user = context.watch<Userprovider>().user;
    List<friends?> userFrnds = context.watch<Userprovider>().frnd;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onTap: () => Navigator.of(context).pushNamed(AppRoutes.user_details),
        ),
        title: Center(
          child: Text(
            " Followers",
            style: TextStyle(fontSize: 18, fontFamily: 'Itim'),
          ),
        ),
        actions: [],
      ),
      body: Column(children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: userFrnds
                .map((item) => Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Card(
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        item?.name ?? "Repo name is null",
                        style: TextStyle(color: Colors.white),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
