import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Post {
//   int? statusCode;
//   String? message;
//   List<Data>? data;

//   Post({this.statusCode, this.message, this.data});

//   Post.fromJson(Map<String, dynamic> json) {
//     statusCode = json['status_code'];
//     message = json['message'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['status_code'] = statusCode;
//     data['message'] = message;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

class Post {
  int? userId;
  String? image;
  String? name;
  String? email;
  String? phone;
  String? lastMessage;

  Post(
      {this.userId,
      this.image,
      this.name,
      this.email,
      this.phone,
      this.lastMessage});

  Post.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    image = json['image'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    lastMessage = json['last_message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['image'] = image;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['last_message'] = lastMessage;
    return data;
  }
}
