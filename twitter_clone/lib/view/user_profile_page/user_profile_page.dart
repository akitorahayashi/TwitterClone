import 'package:flutter/material.dart';

@immutable
class UserProfilePage extends StatelessWidget {
  final String username;
  final String displayName;

  const UserProfilePage(
      {super.key, required this.username, required this.displayName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(displayName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Text(displayName[0]), // 表示名の最初の文字を表示
            ),
            const SizedBox(height: 16),
            Text(
              displayName,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 8),
            Text(
              username,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            Text('This is the profile page of $displayName ($username).'),
          ],
        ),
      ),
    );
  }
}
