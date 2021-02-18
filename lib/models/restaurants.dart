import 'dart:convert';

class Restaurants{
  String id;
  String name;
  String address;
  String description;
  String email;
  String website;
  String phonenumber;
  String image;
  String rating;


  Restaurants({
    this.id,
    this.name,
    this.address,
    this.description,
    this.email,
    this.website,
    this.phonenumber,
    this.image,
    this.rating,
  });


  factory Restaurants.fromJson(Map<String,dynamic> parsedJson){
    return Restaurants(
      id : parsedJson['id'],
      name : parsedJson['name'],
      address : parsedJson['address'],
      description : parsedJson['description'],
      email : parsedJson['email'],
      website : parsedJson['website'],
      phonenumber : parsedJson['phonenumber'],
      image : parsedJson['image'],
      rating : parsedJson['rating'],
    );
  }

  static List<Restaurants> listFromJson(List<dynamic> list) {
    List<Restaurants> rows = list.map((i) => Restaurants.fromJson(i)).toList();
    return rows;
  }

  static List<Restaurants> listFromString(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Restaurants>((json) => Restaurants.fromJson(json)).toList();
  }

  Map<String,dynamic> toJson()=>{
    'id' : id,
    'name' : name,
    'address' : address,
    'description' : description,
    'email' : email,
    'website' : website,
    'phonenumber' : phonenumber,
    'image' : image,
    'rating' : rating,
  };

}