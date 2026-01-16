import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FacebookSignUpPage extends StatefulWidget {
  const FacebookSignUpPage({super.key});

  @override
  State<FacebookSignUpPage> createState() => _FacebookSignUpPageState();
}

class _FacebookSignUpPageState extends State<FacebookSignUpPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _loading = false;
  bool _showPassword = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // ---------------- SIGN UP ----------------
  Future<void> _signUp() async {
    if (_emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      _showMessage("All fields are required");
      return;
    }

    if (_passwordController.text != _confirmPasswordController.text) {
      _showMessage("Passwords do not match");
      return;
    }

    if (_passwordController.text.length < 6) {
      _showMessage("Password must be at least 6 characters");
      return;
    }

    setState(() => _loading = true);

    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/home');
    } on FirebaseAuthException catch (e) {
      _showMessage(e.message ?? "Sign up failed");
    } finally {
      setState(() => _loading = false);
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "facebook",
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1877F2),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Create a new account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  "It's quick and easy.",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 20),

                // -------- SIGN UP CARD --------
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      _inputField(
                        controller: _emailController,
                        hint: "Mobile number or email address",
                      ),
                      const SizedBox(height: 12),
                      _inputField(
                        controller: _passwordController,
                        hint: "New password",
                        isPassword: true,
                      ),
                      const SizedBox(height: 12),
                      _inputField(
                        controller: _confirmPasswordController,
                        hint: "Confirm password",
                        isPassword: true,
                      ),
                      const SizedBox(height: 16),

                      // SIGN UP BUTTON
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: _loading ? null : _signUp,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF42B72A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: _loading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : const Text(
                                  "Sign U
