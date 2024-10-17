// tweet_list.dart
import 'package:flutter/material.dart';
import 'package:twitter_clone/model/tweet.dart';
import 'package:twitter_clone/component/tweet_list/tweet_row.dart';

@immutable
class TweetList extends StatelessWidget {
  final List<Tweet> tweets;
  final Function(int index) onLike;

  const TweetList({
    super.key,
    required this.tweets,
    required this.onLike,
  });

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
