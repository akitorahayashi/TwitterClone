import 'package:flutter/material.dart';
import 'package:twitter_clone/view/create_post_page.dart';
import '../model/tweet.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Tweet> _tweets = [];

  void _addTweet(Tweet tweet) {
    setState(() {
      _tweets.insert(0, tweet); // 新しいツイートを先頭に追加
    });
  }

  void _likeTweet(int index) {
    setState(() {
      _tweets[index].likes++; // いいね数を増やす
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Clone (Offline)'),
      ),
      body: ListView.builder(
        itemCount: _tweets.length,
        itemBuilder: (context, index) {
          final tweet = _tweets[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(tweet.displayName[0]), // 表示名の最初の文字を表示
            ),
            title: Text('${tweet.displayName} (@${tweet.username})'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tweet.content),
                SizedBox(height: 4),
                Text(
                  'Likes: ${tweet.likes}', // いいね数を表示
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  tweet.timestamp.toString(),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreatePostPage(onTweetPosted: _addTweet),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
