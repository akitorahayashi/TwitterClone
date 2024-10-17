import 'package:flutter/material.dart';
import 'view/show_tweets_page/show_tweets_page.dart';

class TwitterClone extends StatelessWidget {
  const TwitterClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const ShowTweetsPage(),
    );
  }
}
