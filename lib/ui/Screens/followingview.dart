import 'package:easy_github/app/data/models/following.dart';
import 'package:easy_github/notifier/UserProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class followingview extends StatefulWidget {
  @override
  State<followingview> createState() => _repoviewState();
}

class _repoviewState extends State<followingview> {
  @override
  Widget build(BuildContext context) {
    List<following?> userfollowing = context.watch<Userprovider>().foling;

    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
            itemCount: userfollowing.length,
            itemBuilder: (context, index) {
              return Column(
                  children: userfollowing
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
