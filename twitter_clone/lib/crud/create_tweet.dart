// String content;
// DateTime timestamp;
// String username;
// String displayName;
// int likes;

import 'package:twitter_clone/model/tweet.dart';

void createTweet({
  required String userName,
  required String displayName,
  required String content,
}) {
  tweets.insert(Tweet(username: userName,displayName: displayName, content: content))
}
