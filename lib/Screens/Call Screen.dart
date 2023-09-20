import 'package:flutter/material.dart';
class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text("Contact me"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Text("Calling Us"),
              const SizedBox(height: 20,),
              IconButton(onPressed: (){}, icon: Icon(Icons.call)),
              const SizedBox(height: 20,),
              IconButton(onPressed: (){}, icon: Icon(Icons.email)),




            ],
          ),
        ),
      ),
    );
  }
}
