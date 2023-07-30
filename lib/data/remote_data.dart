import 'package:http/http.dart' as http;
import 'package:realtimechat/controllers/posts.dart';
import 'package:realtimechat/data/urls.dart';

class RemoteServices {
  // get posts

  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse(URLs.contactUrl);
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
    return null;
  }
}


// crate a widget of container
