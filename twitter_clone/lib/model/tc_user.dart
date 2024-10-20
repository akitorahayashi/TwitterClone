import 'package:flutter/material.dart';
import 'package:twitter_clone/model/tweet.dart';

class TCUser {
  static TCUser shared = TCUser(
      username: UniqueKey().toString(), displayName: "Guest", ownTweets: []);

  String username;
  String displayName;
  List<Tweet> ownTweets;

  TCUser(
      {required this.username,
      required this.displayName,
      required this.ownTweets});

  void likeATweet({required Tweet tweet}) {
    tweet.likes++;
  }

  void postATweet({required String tweetContent}) {
    if (tweetContent.isNotEmpty) {
      // ユーザー名と表示名は仮のもの
      final newTweet = Tweet(
        username: username,
        displayName: displayName,
        content: tweetContent,
      );
      globalTweets.insert(0, newTweet);
    }
  }
}
