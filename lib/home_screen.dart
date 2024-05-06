import 'package:flutter/material.dart';
import 'package:picoverseit/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 5,
        title: Text(
          'My App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),
        ),
        centerTitle: true,
      ),


      body: SingleChildScrollView(

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //elevate₫ button
              ElevatedButton(onPressed: () {

                print('Clicked profile button!');

                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProfileScreen();
                }));


                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                //   return ProfileScreen();
                // }), (route) => false);


              }, child: Icon(Icons.person)),


              //text button

              TextButton(onPressed: (){}, child: Text('Text Button')),

              //icon Button

              IconButton(onPressed: (){}, icon: Icon(Icons.menu)),


              Text(
                'Hello there!',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600, fontSize: 24),
              ),

              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/nayim_sir.jpeg'),
                  ),
                ),
              ),

              SizedBox(
                height: 500,
              ),

              Image.asset('assets/asad_sir.png'),


            ],
          ),
        ),
      ),
    );
  }
}
