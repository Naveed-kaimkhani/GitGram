import 'package:easy_github/app/data/Endpoints.dart';
import 'package:easy_github/app/data/dioclient.dart';

class following {
  String? login;
  String? avatar_url;
  following({required this.login,required this.avatar_url});
  DioClient _client = DioClient();
  static following frommap(Map<String, dynamic> map) {
    return following(
      login: map['login'],
      avatar_url: map['avatar_url']
     // avatar_url: map['avatar_url'],
    );
  }

  Future<List<following?>> getfriends({String? username}) async {
    try {
      final List response =
          await _client.get('/${Endpoints.userprofile}/$username/$following');
      return response.map((item) => following.frommap(item)).toList();
    } catch (e) {
      throw e;
    }
  }
}
