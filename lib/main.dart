import 'package:flutter/material.dart';
import 'package:picoverseit/grid_view.dart';
import 'package:picoverseit/home_screen.dart';
import 'package:picoverseit/tab_bar.dart';
// Day 08:- stack, listviewBuilder,gridview, tab-bar, media query
void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

    );
  }
}







