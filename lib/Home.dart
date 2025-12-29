// // Widget storyBox() {
// //   return Container(
// //     width: 100,
// //     height: 160,
// //     decoration: BoxDecoration(
// //       color: const Color.fromARGB(255, 203, 30, 30),
// //       borderRadius: BorderRadius.circular(12),
// //     ),
// //   );
// // }
// // ListView.separated(
// //   scrollDirection: Axis.horizontal,
// //   itemCount: 3,
// //   separatorBuilder: (context, index) => SizedBox(width: 10),
// //   itemBuilder: (context, index) {
// //     return storyBox();
// //   },
// // )





// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, home: const Home());
//   }
// }

// class Home extends StatefulWidget {
//   const Home({super.key});
//   @override
//   State<Home> createState() => _HomeState();
// }


// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           SizedBox(width: 10),
//           IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
//           Title(color: const Color.fromARGB(255, 86, 99, 237), child: Text("Facebook")),
//           IconButton(onPressed: () {}, icon: Icon(Icons.add), iconSize: 20,),
//           IconButton(onPressed: () {}, icon: Icon(Icons.search), iconSize: 20),
//           IconButton(onPressed: () {}, icon: Icon(Icons.message), iconSize: 20),
//         ],
//       ),
//       body: Column(
//         children: [
//           Row(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.home),
//                 color: const Color.fromARGB(255, 81, 149, 227),
//                 iconSize: 28,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.ondemand_video),
//                 color: const Color.fromARGB(255, 81, 149, 227),
//                 iconSize: 20,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.people),
//                 color: Color.fromARGB(255, 81, 149, 227),
//                 iconSize: 20,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.store),
//                 color: Color.fromARGB(255, 81, 149, 227),
//                 iconSize: 20,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.notifications),
//                 color: Color.fromARGB(255, 81, 149, 227),
//                 iconSize: 20,
//               ),
//             ],
//           ),



//           //whats on your mind section
//           Row(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.account_circle,color: Colors.blue,),
//                 iconSize: 50,
//               ),
//              TextField(
//               decoration: InputDecoration(

//                 hintText: "What's on your mind?", 
//               ),
//              ),

//               // ElevatedButton(
//               //   onPressed: () {},
//               //   child: Text("Whats on your mind?"),
//               //   style: ElevatedButton.styleFrom(
//               //     backgroundColor: Colors.white,
//               //     foregroundColor: Colors.black,
//               //     minimumSize: Size(250, 40),
//               //     shape: RoundedRectangleBorder(
//               //       borderRadius: BorderRadius.circular(20),
//               //     ),
//               //   ),
//               // ),

//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.photo),
//                 color: Colors.blue,
//               ),
//             ],
//           ),




//           // story section
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//               child: Row(
//             children: [
//               Container(
//                 margin: EdgeInsets.all(8),
//                 width: 100,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: Colors.blue,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//               Container(
//                margin: EdgeInsets.all(8),
//                 width: 100,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 15, 18, 21),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),

//               Container(
//                margin: EdgeInsets.all(8),
//                 width: 100,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 190, 61, 134),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),



//               Container(

//                margin: EdgeInsets.all(8),
//                 //  scrollDirection: Axis.horizontal,
//                 width: 100,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 213, 221, 69),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),



//                 Container(

//                margin: EdgeInsets.all(8),
//                 //  scrollDirection: Axis.horizontal,
//                 width: 100,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 97, 225, 127),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),




//             ],
//           ),
//         )
//         ],

//                      // divider after stories
// Divider(thickness: 8, color: Colors.grey[300]),

// // ================= POST SECTION =================
// Container(
//   color: Colors.white,
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       // Post header
//       ListTile(
//         leading: Icon(Icons.account_circle, size: 45, color: Colors.blue),
//         title: Text("John Doe", style: TextStyle(fontWeight: FontWeight.bold)),
//         subtitle: Text("Just now"),
//         trailing: Icon(Icons.more_horiz),
//       ),

//       // Post text
//       Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         child: Text(
//           "This is my first Facebook UI built using Flutter ",
//           style: TextStyle(fontSize: 16),
//         ),
//       ),

//       SizedBox(height: 10),

//       // Post image placeholder
//       Container(
//         height: 200,
//         width: double.infinity,
//         color: Colors.grey[300],
//         child: Center(child: Text("Post Image")),
//       ),

//       Divider(),

//       // Like Comment Share
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           TextButton.icon(
//             onPressed: () {},
//             icon: Icon(Icons.thumb_up_alt_outlined),
//             label: Text("Like"),
//           ),
//           TextButton.icon(
//             onPressed: () {},
//             icon: Icon(Icons.comment_outlined),
//             label: Text("Comment"),
//           ),
//           TextButton.icon(
//             onPressed: () {},
//             icon: Icon(Icons.share_outlined),
//             label: Text("Share"),
//           ),
//         ],
//       ),
//     ],
//   ),
// ),
        




//       ),
//     );
//   }
// }






import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: [
           const Divider(thickness: 0.5,color: Colors.black,),

          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // const SizedBox(width: 10),
          // IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          Title(
            color: Color.fromARGB(255, 86, 99, 237),
            child: Text("Facebook"),                    
             ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
        ],),


      //   Title(
      //     color:Colors.gray,
      //     child:Text("FaceBbook"),
      //   )
      //   IconButton(
      //     onPressed:(){},
      //     icon:Icon(Icons.menu),
      //     color:Colors.gray,
      //   )
      //   IconButton(
      //     onPressed:(){},
      //     icon:Icon(Icons.add),
      //     color:Colors.gray,
      //   )
      //   IconButton(
      //     onPressed:(){},
      //     icon:Icon(Icons.search),
      //     color:Colors.gray,
      // ),
      // IconButton(
      //     onPressed:(){},
      //     icon:Icon(Icons.message),
      //     color:Colors.gray,
      // ),
      // ),

      //  BODY

      body: SingleChildScrollView(
        
        child: Column(
          children: [

            // TOP ICON ROW 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, color: Colors.blue, size: 28),
                Icon(Icons.ondemand_video, color: Colors.grey),
                Icon(Icons.people, color: Colors.grey),
                Icon(Icons.store, color: Colors.grey),
                Icon(Icons.notifications, color: Colors.grey),
              ],
            ),

              // whats on your mind section
          const Divider(thickness: 0.5, color: Colors.black,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                    Container(
                        height: 45,
                        width: 45,
                         decoration: BoxDecoration(
                           
                             shape: BoxShape.circle,
                             color: Colors.black

                         ),
                    ),
                  const SizedBox(width: 10),
                  
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "What's on your mind?",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.photo, color: Colors.green),
                  ),
                ],
              ),
            ),

    

            //  STORIES
            SizedBox(
              height: 210,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding:const EdgeInsets.all(8),
                itemCount: 10,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder:(context,index){
                  return Container(
                    width:100,
                    height:200,
                    decoration:BoxDecoration(
                      color:Colors.primaries[index % Colors.primaries.length],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }

                // child: Row(
                //   children: List.generate(
                //     5,
                //     (index) => Container(
                //       margin: const EdgeInsets.all(8),
                //       width: 100,
                //       height: 200,
                //       decoration: BoxDecoration(
                //         color: Colors.blueGrey,
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ),

            // const Divider(thickness: 8),
             const Divider(thickness: 0.5,color: Colors.black,),

            // POST SECTION 
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ListTile(
                    leading:
                        Icon(Icons.account_circle, size: 45, color: Colors.blue),
                    title: Text("Emnet  Befkadu",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Just now"),
                    trailing: Icon(Icons.more_horiz, color: Colors.grey),
                                          
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "This is my first Facebook UI built using Flutter ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey[300],
                   
                    child: Image.asset('assets/Image/hat.jpg', fit: BoxFit.cover,),
                  ),

                  const Divider(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.thumb_up_alt_outlined),
                        label: const Text("Like"),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.comment_outlined),
                        label: const Text("Comment"),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.share_outlined),
                        label: const Text("Share"),
                      ),
                    ],
                  ),
                ],
              ),

                 
            ),
                
                // Container(
                //   child: ,
                // )



          ],
        ),
      ),
    );
  }
}






