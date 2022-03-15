import 'package:easy_github/app/data/Endpoints.dart';
import 'package:easy_github/app/data/dioclient.dart';
import 'package:easy_github/app/data/models/following.dart';
import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/data/models/user_profile.dart';
import 'package:easy_github/ui/Screens/friends.dart';

class GithubApi {
  DioClient _client = new DioClient();
  //DioError? e;
  Future<user_profile?> getUserProfile({String? username}) async {
    try {
      final response = await _client.get('/${Endpoints.userprofile}/$username');
      return user_profile.fromjson(response);
    } catch (e) {

    }
  }

  Future<List<repos?>> getUserRepos({String? username}) async {
    try {
      final List response = await _client
          .get('${Endpoints.userprofile}/$username/${Endpoints.repos}');
      return response.map((e) => repos.frommap(e)).toList();
    } catch (e) {
      throw e;
    }
  }

  Future<List<friends?>> getUserfriends({String? username}) async {
    try {
      final List response = await _client
          .get('${Endpoints.userprofile}/$username/${Endpoints.friends}');
      return response.map((e) => friends.frommap(e)).toList();
    } catch (e) {
      throw e;
    }
  }

  Future<List<following?>> getUserfolloing({String? username}) async {
    try {
      final List response = await _client
          .get('${Endpoints.userprofile}/$username/${Endpoints.foling}');
      return response.map((e) => following.frommap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
