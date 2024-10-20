import 'package:flutter/material.dart';
import 'package:twitter_clone/model/tc_user.dart';

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
            icon: const Icon(Icons.send),
            onPressed: () {
              TCUser.shared.postATweet(tweetContent: _controller.text);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          decoration: const InputDecoration(
            hintText: 'What\'s happening?',
          ),
          maxLines: 5,
        ),
      ),
    );
  }
}
