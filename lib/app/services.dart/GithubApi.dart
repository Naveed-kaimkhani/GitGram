

import 'package:easy_github/app/data/Endpoints.dart';
import 'package:easy_github/app/data/dioclient.dart';
import 'package:easy_github/app/data/models/repos.dart';
import 'package:easy_github/app/data/models/user_profile.dart';

class GithubApi{
  DioClient _client =new DioClient();
  //DioError? e;
  Future<user_profile?> getUserProfile({String? username})async{
      try {
        final response =await _client.get('/${Endpoints.userprofile}/$username');
        return user_profile.fromjson(response);
      } catch (e) {
       // DioExceptions.fromDioError(e).toString();
        
      }

  }
  Future<List<repos?>> getUserRepos({String? username}) async{
    try {
      final List response=await _client.get(
        '${Endpoints.userprofile}/$username/${Endpoints.repos}'
      );
      return response.map((e) => repos.frommap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}