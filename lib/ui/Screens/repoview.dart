import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class repoview extends StatelessWidget {
  String? name;
  repoview({this.name});
  @override
  Widget build(BuildContext context) {
    List<repos?> reposInfo = context.watch<Userprovider>().repo;
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          title: Text(name! + "'s Repos"),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: Expanded(
          child: GridView.count(
            crossAxisCount: 1,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            children: reposInfo
                .map((item) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(AppRoutes.Repo_webview,
                            arguments: item!.html_url);
                      },
                      child: Container(
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
                      ),
                    ))
                .toList(),
          ),
        ));
  }
}
