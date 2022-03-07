
class user_profile{
  String? name;
  String? avatar_url;
  String? bio;
  int? followers;
  int? following;
  int? reposi;
  String? email;
  String? location;
  String? company;
  String? updated_at;
  user_profile({
    required this.name,
   required this.avatar_url,
   required this.bio,
   required this.followers,
   required this.following,
   required this.reposi,
   required this.email,
   required this.location,
   required this.company,
   required this.updated_at
   });

    user_profile.fromjson(Map<String,dynamic> json){
      this.name=json['name'];
      this.avatar_url=json['avatar_url'];
      this.bio=json['bio'];
      this.followers=json['followers'];
      this.following=json['following'];
       this.reposi=json['public_repos'];
      this.email=json['email'];
      this.location=json['location'];
      this.company=json['company'];
      this.updated_at=json['updated_at'];
    }

    
    Map<String,dynamic> tojson(){
      final Map<String,dynamic> data=new Map<String,dynamic>();
      data['name']=this.name;
      // this.avatar_url=json['avatar_url'];
      // this.bio=json['bio'];
      // this.followers=json['followers'];
      // this.following=json['following'];
     return data;
    }
    
}