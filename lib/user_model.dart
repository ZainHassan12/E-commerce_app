import 'dart:convert';

class UserModel{
  final String name;
  final String email;
  final String phone;
  final String userImg;
  final String country;
  final String userAddress;
  final dynamic createdOn;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.userImg,
    required this.country,
    required this.userAddress,
    required this.createdOn,
  });

  Map<String, dynamic> toMap() {
    return{
      'name' : name,
      'email' : email,
      'phone' : phone,
      'userImg' : userImg,
      'country' : country,
      'userAddress' : userAddress,
      'createdOn' : createdOn,
    };
  }
}