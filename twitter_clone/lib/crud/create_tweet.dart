// String content;
// DateTime timestamp;
// String username;
// String displayName;
// int likes;

import 'package:twitter_clone/model/tweet.dart';

void createTweet({
  required String username,
  required String displayName,
  required String content,
}) {
  tweets.insert(
      0, Tweet(username: username, displayName: displayName, content: content));
}
