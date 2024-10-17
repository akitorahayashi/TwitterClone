import 'package:flutter/material.dart';
import 'view/show_tweets_page.dart';

class TwitterClone extends StatelessWidget {
  const TwitterClone({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const ShowTweetsPage(title: 'Flutter Demo Home Page'),
    );
  }
}
