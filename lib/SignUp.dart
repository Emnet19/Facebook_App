  // child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal:25.0),

  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               TextField(
  //                 decoration: InputDecoration(
  //                 hintText: "First Name",
  //                 hintStyle: TextStyle(color: Colors.grey),
  //                 contentPadding: EdgeInsets.symmetric(
  //                   vertical: 12,
  //                   horizontal: 12,
  //                 ),
  //                  enabledBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5),
  //                   borderSide: BorderSide(color: Colors.grey),
  //                  ),
  //                  focusedBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5),
  //                   borderSide: BorderSide(color: Colors.blue)
  //                  )
  //                 ),
  //               ),
  //               SizedBox(height: 20,),
  //                           TextField(
  //                 decoration: InputDecoration(
  //                 hintText: "Last Name",
  //                 hintStyle: TextStyle(color: Colors.grey),
  //                 contentPadding: EdgeInsets.symmetric(
  //                   vertical: 12,
  //                   horizontal: 12,
  //                 ),
  //                  enabledBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5),
  //                   borderSide: BorderSide(color: Colors.grey),
  //                  ),
  //                  focusedBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5),
  //                   borderSide: BorderSide(color: Colors.blue)
  //                  )
  //                 ),
  //               ),
  //               SizedBox(height: 20,),




  //                           TextField(
  //                 decoration: InputDecoration(
  //                 hintText: "Email",
  //                 hintStyle: TextStyle(color: Colors.grey),
  //                 contentPadding: EdgeInsets.symmetric(
  //                   vertical: 12,
  //                   horizontal: 12,
  //                 ),
  //                  enabledBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5),
  //                   borderSide: BorderSide(color: Colors.grey),
  //                  ),
  //                  focusedBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5),
  //                   borderSide: BorderSide(color: Colors.blue)
  //                  )
  //                 ),
  //               ),
  //               SizedBox(height: 20,),




  //                 TextField(
  //                 decoration: InputDecoration(
  //                 hintText: "Passward",
  //                 hintStyle: TextStyle(color: Colors.grey),
  //                 contentPadding: EdgeInsets.symmetric(
  //                   vertical: 12,
  //                   horizontal: 12,
  //                 ),
  //                  enabledBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5),
  //                   borderSide: BorderSide(color: Colors.grey),
  //                  ),
  //                  focusedBorder: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(5),
  //                   borderSide: BorderSide(color: Colors.blue)
  //                  )
  //                 ),
  //               ),
  //               SizedBox(height: 20,)
  //             ],
  //           ),
  //          ),






// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({super.key});

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final _formKey = GlobalKey<FormState>();

//   final TextEditingController firstName = TextEditingController();
//   final TextEditingController lastName = TextEditingController();
//   final TextEditingController email = TextEditingController();
//   final TextEditingController password = TextEditingController();

//   // ---------- GOOGLE SIGN IN ----------
//   Future<void> signInWithGoogle() async {
//     final GoogleSignInAccount? googleUser =
//         await GoogleSignIn().signIn();

//     if (googleUser == null) return;

//     final GoogleSignInAuthentication googleAuth =
//         await googleUser.authentication;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     await FirebaseAuth.instance.signInWithCredential(credential);

//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text("Signed in with Google")),
//     );
//   }

//   // ---------- TEXT FIELD ----------
//   Widget buildField({
//     required String hint,
//     required TextEditingController controller,
//     bool isPassword = false,
//     String? Function(String?)? validator,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: TextFormField(
//         controller: controller,
//         obscureText: isPassword,
//         validator: validator,
//         decoration: InputDecoration(
//           hintText: hint,
//           contentPadding:
//               const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(5),
//             borderSide: const BorderSide(color: Colors.grey),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(5),
//             borderSide: const BorderSide(color: Colors.blue),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           child: Form(
//             key: _formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "Create a new account",
//                   style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.blue),
//                 ),

//                 const SizedBox(height: 20),

//                 buildField(
//                   hint: "First Name",
//                   controller: firstName,
//                   validator: (v) =>
//                       v!.isEmpty ? "First name required" : null,
//                 ),

//                 buildField(
//                   hint: "Last Name",
//                   controller: lastName,
//                   validator: (v) =>
//                       v!.isEmpty ? "Last name required" : null,
//                 ),

//                 buildField(
//                   hint: "Email",
//                   controller: email,
//                   validator: (v) =>
//                       v!.contains("@") ? null : "Enter valid email",
//                 ),

//                 buildField(
//                   hint: "Password",
//                   controller: password,
//                   isPassword: true,
//                   validator: (v) =>
//                       v!.length < 6 ? "Minimum 6 characters" : null,
//                 ),

//                 const SizedBox(height: 15),

//                 // SIGN UP BUTTON
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                               content: Text("Form is valid")),
//                         );
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF1877F2),
//                       padding:
//                           const EdgeInsets.symmetric(vertical: 14),
//                     ),
//                     child: const Text("Sign Up"),
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 Row(
//                   children: const [
//                     Expanded(child: Divider()),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 10),
//                       child: Text("OR"),
//                     ),
//                     Expanded(child: Divider()),
//                   ],
//                 ),

//                 const SizedBox(height: 20),

//                 // GOOGLE SIGN IN
//                 SizedBox(
//                   width: double.infinity,
//                   child: OutlinedButton.icon(
//                     onPressed: signInWithGoogle,
//                     icon: Image.network(
//                       "https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg",
//                       height: 20,
//                     ),
//                     label: const Text("Continue with Google"),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  // 🔹 Manual Signup
  Future<void> signUpManually() async {
    if (!_formKey.currentState!.validate()) return;

    try {
      setState(() => isLoading = true);

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Home()),
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? "Signup failed")),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  // 🔹 Google Signup
  Future<void> signUpWithGoogle() async {
    try {
      setState(() => isLoading = true);

      final googleSignIn = GoogleSignIn();
      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) return;

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with Firebase
      await FirebaseAuth.instance.signInWithCredential(credential);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Home()),
      );
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? "Google signup failed")),
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create Account",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(height: 10),
            const Text(
              "Sign up to get started!",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // 🔹 FORM
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // First Name
                  TextFormField(
                    controller: firstNameController,
                    decoration: InputDecoration(
                      hintText: "First Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.person),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Enter first name" : null,
                  ),
                  const SizedBox(height: 15),

                  // Last Name
                  TextFormField(
                    controller: lastNameController,
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.person_outline),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Enter last name" : null,
                  ),
                  const SizedBox(height: 15),

                  // Email
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.email),
                    ),
                    validator: (value) =>
                        value!.isEmpty ? "Enter email" : null,
                  ),
                  const SizedBox(height: 15),

                  // Password
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                    ),
                    validator: (value) =>
                        value!.length < 6 ? "Password too short" : null,
                  ),
                  const SizedBox(height: 25),

                  // 🔹 Create Account Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isLoading ? null : signUpManually,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      child: isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white)
                          : const Text(
                              "Create Account",
                              style: TextStyle(fontSize: 18),
                            ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // OR Divider
                  Row(
                    children: const [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text("OR"),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // 🔹 Google Sign Up Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: isLoading ? null : signUpWithGoogle,
                      icon: const Icon(Icons.g_mobiledata, size: 32),
                      label: const Text(
                        "Continue with Google",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
