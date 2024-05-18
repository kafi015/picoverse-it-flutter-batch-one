import 'package:flutter/material.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(

        appBar: AppBar(

          title: const Text('Facebook'),

          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Video',
                icon: Icon(Icons.video_camera_back),
              ),
              Tab(
                text: 'Friend Request',
                icon: Icon(Icons.group),
              ),
              Tab(
                text: 'Menu',
                icon: Icon(Icons.mode_comment_outlined),
              ),
            ],
          ),

        ),

        body: const TabBarView(
          children: [
            Center(child: Text('Home Screen'),),
            Center(child: Text('Video Screen'),),
            Center(child: Text('Friend Request Screen'),),
            Center(child: Text('Menu Screen'),),
          ],
        ),
      ),
    );
  }
}
