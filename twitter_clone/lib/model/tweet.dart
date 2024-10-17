class Tweet {
  String content;
  DateTime timestamp;
  String username;
  String displayName;
  int likes;

  Tweet({
    required this.content,
    required this.timestamp,
    required this.username,
    required this.displayName,
    required this.likes,
  });
}
