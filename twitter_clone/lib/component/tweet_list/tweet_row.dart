import 'package:flutter/material.dart';
import '../../model/tweet.dart';
import '../../model/external/tc_format.dart';

@immutable
class TweetRow extends StatelessWidget {
  final Tweet tweet;
  final VoidCallback onLike;

  const TweetRow({
    super.key,
    required this.tweet,
    required this.onLike,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(tweet.displayName[0]), // 表示名の最初の文字を表示
      ),
      title: Text('${tweet.displayName} (${tweet.username})'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tweet.content),
          const SizedBox(height: 4),
          Text(
            TcFormat.shared
                .formatTimestamp(tweet.timestamp), // フォーマットされたタイムスタンプを表示
            style: const TextStyle(color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Likes: ${tweet.likes}'),
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: onLike, // いいねボタン
              ),
            ],
          ),
        ],
      ),
    );
  }
}
