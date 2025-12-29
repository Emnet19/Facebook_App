// read on firebase,

import 'package:facebook/main.dart';
import 'package:flutter/material.dart';
import 'package:facebook/SignUp.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: Login()
        );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login In To Facebook',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              //  textfield controller object tp control every thing to control about
              //the filed
              SizedBox(height: 20),

              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey),
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),

              SizedBox(height: 20),

              //  password field
              TextField(
                controller: passwordController,

                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 10,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                ),
              ),

              // button Field
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 4, 136, 244),
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),

                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),


                //  or section

                SizedBox(height: 20),
              Row(
                children: [
                  Expanded(child: Divider(height: 15, endIndent: 10)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("OR", style: TextStyle(color: Colors.grey)),
                  ),
                  Expanded(child: Divider(height: 15, indent: 10)),
                ],
              ),


                
              // create account
              //        ElevatedButton(
              //               onPressed:(){},
              //               style: ElevatedButton.styleFrom(
              //                 backgroundColor: Colors.grey,
              //                 shape:RoundedRectangleBorder(
              //                       borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),                          
              //                        ),
              //        ),
              //               child: Text("Create Account With Google "),
              // ),
              
                  TextButton(onPressed: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>SignUp()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.resolveWith<Color>((states){
                      if(states.contains(WidgetState.hovered)){
                        return Colors.blue;
                      }
                         return Colors.grey;
                    },
                    ),
                    overlayColor:WidgetStateProperty.all(Colors.transparent),
                    
                  ),
                  
                   child: Text("Sign Up"))                 
          
            ],
          ),
        ),
      ),
    );
  }
}
