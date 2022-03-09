import 'package:easy_github/app/data/Endpoints.dart';
import 'package:easy_github/app/data/dioclient.dart';

class friends {
  String? name, avatar_url;
  friends({this.name, this.avatar_url});
  DioClient _client = DioClient();
  static friends frommap(Map<String, dynamic> map) {
    return friends(
      name: map['name'],
      avatar_url: map['avatar_url'],
    );
  }

  Map<String, dynamic>? toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['avatar_url'] = this.avatar_url;
  }

  Future<List<friends?>> getfriends({String? username}) async {
    try {
      final List response =
          await _client.get('/${Endpoints.userprofile}/$username/$friends');
      return response.map((item) => friends.frommap(item)).toList();
    } catch (e) {
      throw e;
    }
  }
}
