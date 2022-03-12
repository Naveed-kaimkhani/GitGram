import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:easy_github/ui/Screens/friends.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class frndview extends StatefulWidget {
  @override
  State<frndview> createState() => _repoviewState();
}

class _repoviewState extends State<frndview> {
  @override
  Widget build(BuildContext context) {
    List<friends?> userFrnds = context.watch<Userprovider>().frnd;

    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
            itemCount: userFrnds.length,
            itemBuilder: (context, index) {
              return Column(
                  children: userFrnds
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Text(
                              e!.login ?? "No name",
                              style: TextStyle(fontSize: 20),
                            ),
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(e.avatar_url ?? 'No image'),
                            ),
                          ),
                        ),
                      )
                      .toList());
            }));
  }
}
