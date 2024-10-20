// tweet_list.dart
import 'package:flutter/material.dart';
import 'package:twitter_clone/model/tc_user.dart';
import 'package:twitter_clone/model/tweet.dart';
import 'package:twitter_clone/component/tweet_list/tweet_row.dart';

@immutable
class TweetList extends StatelessWidget {
  final List<Tweet> selectedTweets;

  const TweetList({
    super.key,
    required this.selectedTweets,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: selectedTweets.length,
      itemBuilder: (context, indexInSelectedTweets) {
        final tweet = selectedTweets[indexInSelectedTweets];
        return TweetRow(
          tweet: tweet,
          onLike: () => TcUser.shared
              .likeATweet(tweet: selectedTweets[indexInSelectedTweets]),
        );
      },
    );
  }
}
