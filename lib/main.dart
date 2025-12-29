// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
       
//         colorScheme: .fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
  
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
        
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
     
//         title: Text(widget.title),
//       ),
//       body: Center(
        
//         child: Column(
         
//           mainAxisAlignment: .center,
//           children: [
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }


// // import 'package:facebook/Home.dart';
// import 'package:facebook/login.dart';
// import 'SignUp.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// void main()async{
//   // WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();

//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   // any class that is extending stateless widget must override build method
//   @override
//   Widget build(BuildContext context) {
//    return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//     home:  Facebook(),
//    );
//   }
// }
//  class Facebook extends StatefulWidget{
//   const Facebook({super.key});
// //  everytime usig stateful widget we have to override createState method
// // it returns a state object. state meanns a new page or a new widget
//   @override
//    State<Facebook>createState()=>_FacebookState();
//  }
// // splash screen : a screen that says when the app begin for sometime
// // has timer :Timer(duration(seconds:2,or minutes:8 etc...),future:for only to use it one time not repeatedly,to use periodically use timer
// // 


// // 
//  class _FacebookState extends State<Facebook>{
//   @override
//   Widget build(BuildContext context){
//      return Scaffold(
//       // appBar: AppBar(title: Text('Facebook'), ),
//       body:Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//                     IconButton(onPressed: (){}, icon: Icon(Icons.facebook, size: 50, color: Colors.blue,),alignment:Alignment.center ,),
//                          ElevatedButton(onPressed: (){
//                           // to navigate from one oage to another we should call setState method
//             Navigator.push(context,
//             MaterialPageRoute(builder: (context)=> const Login()
//             )
//             );
//         }, child: const Text('Start'),
//       )
//            ])


//     )
//     );
//   }
//  }

import 'dart:async';
import 'package:facebook/login.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const Login(),
      },
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF1877F2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "facebook",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}