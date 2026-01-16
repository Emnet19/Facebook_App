import 'package:flutter/material.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Friends",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: ListView(
        children: [
          _friendTile(
            name: "Abel Tesfaye",
            mutualFriends: "5 mutual friends",
          ),
          _friendTile(
            name: "Sara Mekonnen",
            mutualFriends: "2 mutual friends",
          ),
          _friendTile(
            name: "John Samuel",
            mutualFriends: "10 mutual friends",
          ),
          _friendTile(
            name: "Liya Alemu",
            mutualFriends: "1 mutual friend",
          ),
        ],
      ),
    );
  }

  Widget _friendTile({
    required String name,
    required String mutualFriends,
  }) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 22,
        backgroundColor: Colors.grey,
        child: Icon(Icons.person, color: Colors.white),
      ),
      title: Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(mutualFriends),
      trailing: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1877F2),
          padding: const EdgeInsets.symmetric(horizontal: 12),
        ),
        child: const Text("Add Friend"),
      ),
    );
  }
}
