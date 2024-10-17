// tweet_list.dart
import 'package:flutter/material.dart';
import 'package:twitter_clone/model/tweet.dart';
import 'package:twitter_clone/view/show_tweets_page/tweet_list/tweet_row.dart';

class TweetList extends StatelessWidget {
  final List<Tweet> tweets;
  final Function(int index) onLike;

  const TweetList({
    Key? key,
    required this.tweets,
    required this.onLike,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tweets.length,
      itemBuilder: (context, index) {
        final tweet = tweets[index];
        return TweetRow(
          tweet: tweet,
          onLike: () => onLike(index),
        );
      },
    );
  }
}
