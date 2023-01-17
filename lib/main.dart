import 'package:flutter/material.dart';
import 'home_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomeNavigationBar(),
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
    return const HomeNavigationBar(); // body: DescriptionPlace("Colombia", 5,
    //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry.  bLorem Ipsum has been the industry's standard dummy text ever since the 1500s. \n\n' When an unknown printer took a galley of type and scrambled it to make a type specimen book."));
  }
}
