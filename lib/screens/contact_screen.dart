import 'package:flutter/material.dart';
import 'package:realtimechat/controllers/posts.dart';
import 'package:realtimechat/data/remote_data.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Post>? _post;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    _post = await RemoteServices().getPosts();
    // if (_post != null) {
    //   setState(() {});
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: _post?.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(24),
                child: Text(_post![index].name.toString()),
              );
            }),
      ),
    );
  }
}
