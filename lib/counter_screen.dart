import 'dart:developer';

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 200,),
          const Center(child: Text('You Pushed the button :',style: TextStyle(fontSize: 24),)),
          Center(child: Text('$count',style: const TextStyle(fontSize: 24),)),

          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                log('Elevated Button pressed');

                if(count>0)
                  {
                    count = count - 1;
                  }
                log(count.toString());

                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1,size: 50,),
            ),
          ),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          log('pressed');
          count = count + 1;
          log(count.toString());

          setState(() {});
        },
        child: const Icon(Icons.add),

      ),

    );
  }
}
