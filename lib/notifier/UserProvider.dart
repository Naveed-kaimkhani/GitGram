import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/data/models/user_profile.dart';
import 'package:easy_github/app/routes/AppRoutes.dart';
import 'package:easy_github/app/services.dart/GithubApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Userprovider extends ChangeNotifier {
  GithubApi _githubapi = new GithubApi();

  user_profile? _user;
  user_profile? get user => _user;

  late List<repos?> _repo;
  List<repos?> get repo => _repo;

  bool isLoading = false;
  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  Future<void> getuser({String? username}) async {
    setLoading(true);
    try {
      print("In try");
      final Future<user_profile?> response =
          _githubapi.getUserProfile(username: username);
      _user = await response;
      print("user got");
      // print(_user!.name);
      setLoading(false);
    } catch (e) {
      // SnackBar(
      //   content: Text(e.toString()),
      //   action: SnackBarAction(
      //     label: 'Undo',
      //     onPressed: () {
      //       // Some code to undo the change.
      //     },
      //   ),
      // );

      setLoading(false);
    }
  }

  Future<void> getuserRepo(
      {String? username, required BuildContext context}) async {
    setLoading(true);
    try {
      //_repo=await _githubapi.getUserRepos(username: username
      final List<repos?> response =
          await _githubapi.getUserRepos(username: username);
      _repo = response;

      Navigator.of(context).pushNamed(AppRoutes.user_details);
    } 
    // on NullThrownError {
    //   Navigator.of(context).pushNamed(AppRoutes.ErrorScreen);
    //}
     catch (e) {
      // SnackBar(
      //   content: Text(e.toString()),
      //   action: SnackBarAction(
      //     label: 'Undo',
      //     onPressed: () {
      //       // Some code to undo the change.
      //     },
      //   ),
      // );

      setLoading(false);
    }
  }
}
