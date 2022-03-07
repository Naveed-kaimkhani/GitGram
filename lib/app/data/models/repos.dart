import 'package:easy_github/app/data/Endpoints.dart';
import 'package:easy_github/app/data/dioclient.dart';

class repos{
  String? name,html_url;
  repos({this.name,this.html_url});
  DioClient _client=DioClient();
  static repos? frommap(Map<String,dynamic> map){
    if (map==null) {
      return null;
    }
    return repos(
      name: map['name'],
      html_url: map['html_url'],
    );
  }
   Map<String,dynamic>? toJson(){
    Map<String,dynamic> data=new Map<String,dynamic>();
    data['name']=this.name;
    data['html_url']=this.html_url;
  }
  
  Future<List<repos?>> getrepos({String? username})async{
      try {
        final List response =await _client.get('/${Endpoints.userprofile}/$username/$repos');
        return response.map((item) => repos.frommap(item)).toList();
      } catch (e) {
        throw e;
      }

  }
}