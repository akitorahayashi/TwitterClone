import 'package:flutter/material.dart';
import 'package:twitter_clone/view/create_post_page.dart';
import 'package:twitter_clone/view/show_tweets_page/tweet_list/tweet_list.dart';
import '../../model/tweet.dart';

class ShowTweetsPage extends StatefulWidget {
  const ShowTweetsPage({super.key, required this.title});
  final String title;

  @override
  State<ShowTweetsPage> createState() => _ShowTweetsPageState();
}

class _ShowTweetsPageState extends State<ShowTweetsPage> {
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
        title: Text(widget.title),
      ),
      body: TweetList(
        tweets: _tweets,
        onLike: _likeTweet, // いいね関数を渡す
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
