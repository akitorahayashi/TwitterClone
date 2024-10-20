import 'package:flutter/material.dart';
import 'package:twitter_clone/view/create_post_page.dart';
import 'package:twitter_clone/component/tweet_list/tweet_list.dart';
import '../../model/tweet.dart';

class ShowTweetsPage extends StatefulWidget {
  const ShowTweetsPage();

  @override
  State<ShowTweetsPage> createState() => _ShowTweetsPageState();
}

class _ShowTweetsPageState extends State<ShowTweetsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter Clone"),
      ),
      body: TweetList(
        tweets: tweets,
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
