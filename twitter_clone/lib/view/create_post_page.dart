import 'package:flutter/material.dart';
import '../model/tweet.dart';

class CreatePostPage extends StatefulWidget {
  final Function(Tweet) onTweetPosted;

  const CreatePostPage({super.key, required this.onTweetPosted});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  final TextEditingController _controller = TextEditingController();

  void _postTweet() {
    final content = _controller.text;
    if (content.isNotEmpty) {
      // ユーザー名と表示名は仮のもの
      final newTweet = Tweet(
          content: content,
          timestamp: DateTime.now(),
          username: '@user123',
          displayName: 'John Doe',
          likes: 0);
      widget.onTweetPosted(newTweet);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Tweet'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _postTweet,
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
