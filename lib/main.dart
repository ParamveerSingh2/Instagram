import 'package:flutter/material.dart';
import 'package:instagram/footer.dart';
import 'package:instagram/header.dart';
import 'package:instagram/stories.dart';
import 'package:instagram/user_post.dart';
import 'package:instagram/user_post_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(
            child: ListView(
              children: [
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                  indent: 0.1,
                  endIndent: 0.1,
                ),
                SizedBox(height: 100, child: Stories()),
                Divider(color: Colors.black, thickness: 0.1),
                UserPostHeader(),
                // UserPost(),
                Divider(
                  color: Colors.black,
                  thickness: 0.1,
                  indent: 0.1,
                  endIndent: 0.1,
                ),
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
