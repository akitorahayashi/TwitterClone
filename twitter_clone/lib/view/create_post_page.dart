import 'package:flutter/material.dart';
import 'package:twitter_clone/model/tc_user.dart';
import '../model/tweet.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Tweet'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              TcUser.shared.postTweet(tweetContent: _controller.text);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'What\'s happening?',
          ),
          maxLines: 5,
        ),
      ),
    );
  }
}
