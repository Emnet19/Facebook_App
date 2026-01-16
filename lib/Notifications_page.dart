import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: ListView(
        children: [
          _notificationTile(
            icon: Icons.thumb_up,
            iconColor: Colors.blue,
            text: "Abel liked your post",
            time: "2h ago",
          ),
          _notificationTile(
            icon: Icons.comment,
            iconColor: Colors.green,
            text: "Sara commented on your post",
            time: "4h ago",
          ),
          _notificationTile(
            icon: Icons.people,
            iconColor: Colors.orange,
            text: "John sent you a friend request",
            time: "1d ago",
          ),
          _notificationTile(
            icon: Icons.notifications,
            iconColor: Colors.red,
            text: "You have a new notification",
            time: "2d ago",
          ),
        ],
      ),
    );
  }

  // -------- Notification Tile --------
  Widget _notificationTile({
    required IconData icon,
    required Color iconColor,
    required String text,
    required String time,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: iconColor.withOpacity(0.15),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(time),
      trailing: const Icon(Icons.more_horiz),
    );
  }
}
