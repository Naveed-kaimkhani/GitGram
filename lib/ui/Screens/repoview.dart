import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class repoview extends StatefulWidget {
  // String? name;
  // repoview({this.name});

  @override
  State<repoview> createState() => _repoviewState();
}

class _repoviewState extends State<repoview> {
  @override
  Widget build(BuildContext context) {
    List<repos?> reposInfo = context.watch<Userprovider>().repo;
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.arrow_back_ios),
            onTap: () => AppRoutes.user_details,
          ),
          title: Text("s Repos"),
          backgroundColor: Colors.black,
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: reposInfo.length,
                itemBuilder: (context,index){
                  return ListTile(
                  
                  );
                }


              // child: GridView.count(
              //   crossAxisCount: 1,
              //   crossAxisSpacing: 5,
              //   mainAxisSpacing: 5,
              //   children: reposInfo
              //       .map((item) => GestureDetector(
              //             onTap: () {
              //               Navigator.of(context).pushNamed(AppRoutes.Repo_webview,
              //                   arguments: item!.html_url);
              //             },
              //             child: Container(
              //               decoration: BoxDecoration(
              //                 border: Border.all(
              //                   color: Colors.grey,
              //                 ),
              //                 borderRadius: BorderRadius.all(Radius.circular(12)),
              //               ),
              //               child: Card(
              //                 color: Colors.black,
              //                 child: Center(
              //                   child: Text(
              //                     item?.name ?? "Repo name is null",
              //                     style: TextStyle(color: Colors.white),
              //                     maxLines: 1,
              //                     overflow: TextOverflow.ellipsis,
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           ))
              //       .toList(),
              // ),
            ),
          ],
        ));
  }
}
