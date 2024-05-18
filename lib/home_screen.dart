import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double height = 0;
  double width = 0;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 5,
        title: const Text(
          'My App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),
        ),
        centerTitle: true,
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
                  height: height/2,
                  width: width/2,
                  color: Colors.purple,
            child: Text('Hello', style: TextStyle(
              fontSize: width * 0.2,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),),
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.cyanAccent,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                )],
        ),
      ),

      //Stack

      // body: SizedBox(
      //   height: 600,
      //   width: 350,
      //   child: Stack(
      //     alignment: Alignment.topRight,
      //     fit: StackFit.expand,
      //     clipBehavior: Clip.none,
      //     children: [
      //       Container(
      //         height: 300,
      //         width: 300,
      //         color: Colors.purple,
      //       ),
      //       Positioned(
      //         top: 50,
      //         right: -50,
      //         child: Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.cyanAccent,
      //         ),
      //       ),
      //       Positioned(
      //         bottom: -100,
      //         left: 50,
      //         child: Container(
      //           height: 150,
      //           width: 150,
      //           color: Colors.red,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),



      //ListView

      // body: ListView(
      //   children: [
      //     Card(
      //       child: ListTile(
      //         leading: Text('Start'),
      //         title: Text('This is Title'),
      //         subtitle: Text('This is subtile'),
      //         trailing: Icon(Icons.add),
      //       ),
      //     ),
      //   ],
      // ),



      //ListView.Builder()

      // body: ListView.builder(
      //   physics: BouncingScrollPhysics(),
      //   itemCount: 20,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: ListTile(
      //         leading: Text('${index+1}'),
      //         title: Text('Tile'),
      //         subtitle: Text('Subtitle'),
      //         trailing: Icon(Icons.abc),
      //       ),
      //     );
      //   },
      // ),


    );
  }
}
