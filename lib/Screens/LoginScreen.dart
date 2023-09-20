import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "UserName"
                ),
              ),
              const SizedBox(height: 20,),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "password",

                ),
              ),
              const SizedBox(height: 20,),

              Container(
                width:double.infinity ,
                child: ElevatedButton(
                    onPressed: ()=>context.go("/profile")
                    ,
                    child: const Text(
                        "Login"
                    )),
              )


            ],
          ),
        ),
      ),


    );
  }
}
