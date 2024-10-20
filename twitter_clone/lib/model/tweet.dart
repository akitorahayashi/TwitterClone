List<Tweet> tweets = [];

class Tweet {
  String username;
  String displayName;
  String content;
  DateTime timestamp = DateTime.now();
  int likes = 0;

  Tweet({
    required this.username,
    required this.displayName,
    required this.content,
  });
}
