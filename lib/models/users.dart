import 'dart:convert';

class Users{
  String id;
  String username;
  String password;
  String nickname;
  String dateofbirth;
  String gender;
  String address;
  String nationality;
  String role;


  Users({
    this.id,
    this.username,
    this.password,
    this.nickname,
    this.dateofbirth,
    this.gender,
    this.address,
    this.nationality,
    this.role,
  });


  factory Users.fromJson(Map<String,dynamic> parsedJson){
    return Users(
      id : parsedJson['id'],
      username : parsedJson['username'],
      password : parsedJson['password'],
      nickname : parsedJson['nickname'],
      dateofbirth : parsedJson['dateofbirth'],
      gender : parsedJson['gender'],
      address : parsedJson['address'],
      nationality : parsedJson['nationality'],
      role : parsedJson['role'],
    );
  }

  static List<Users> listFromJson(List<dynamic> list) {
    List<Users> rows = list.map((i) => Users.fromJson(i)).toList();
    return rows;
  }

  static List<Users> listFromString(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Users>((json) => Users.fromJson(json)).toList();
  }

  Map<String,dynamic> toJson()=>{
    'id' : id,
    'username' : username,
    'password' : password,
    'nickname' : nickname,
    'dateofbirth' : dateofbirth,
    'gender' : gender,
    'address' : address,
    'nationality' : nationality,
    'role' : role,
  };

}