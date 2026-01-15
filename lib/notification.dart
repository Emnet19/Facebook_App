import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Notifications",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey[700]),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.grey[700]),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 20),
        children: [
          _sectionHeader("New"),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/women/32.jpg",
            title: "Jane Smith",
            action: "sent you a friend request",
            time: "2 min ago",
            unread: true,
            friendRequest: true,
          ),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/men/44.jpg",
            title: "Alex Johnson",
            action: "commented on your post",
            time: "15 min ago",
            unread: true,
          ),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/women/21.jpg",
            title: "Flutter Dev Group",
            action: "added a new post",
            time: "30 min ago",
            unread: true,
          ),

          const SizedBox(height: 8),
          _sectionHeader("Today"),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/men/19.jpg",
            title: "Michael Brown",
            action: "liked your photo",
            time: "2 hrs ago",
            unread: false,
          ),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/women/45.jpg",
            title: "Sarah Wilson",
            action: "reacted to your comment",
            time: "4 hrs ago",
            unread: false,
          ),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/men/55.jpg",
            title: "Startup Ethiopia",
            action: "posted a new opportunity",
            time: "6 hrs ago",
            unread: false,
          ),

          const SizedBox(height: 8),
          _sectionHeader("Earlier"),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/men/22.jpg",
            title: "Mike Davis",
            action: "shared a memory with you",
            time: "Yesterday",
            unread: false,
          ),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/women/28.jpg",
            title: "Emma Brown",
            action: "is live now",
            time: "2 days ago",
            unread: false,
          ),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/men/31.jpg",
            title: "Programming Memes",
            action: "posted a new meme",
            time: "3 days ago",
            unread: false,
          ),
          _notificationItem(
            avatar: "https://randomuser.me/api/portraits/women/60.jpg",
            title: "UI/UX Designers",
            action: "invited you to an event",
            time: "5 days ago",
            unread: false,
          ),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _notificationItem({
    required String avatar,
    required String title,
    required String action,
    required String time,
    bool unread = false,
    bool friendRequest = false,
  }) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(avatar),
              ),
              if (unread)
                Positioned(
                  right: 0,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                    children: [
                      TextSpan(
                        text: title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " $action"),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
                if (friendRequest)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Confirm"),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.blue,
                              side: const BorderSide(color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Delete"),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Icon(Icons.more_horiz, color: Colors.grey[500]),
        ],
      ),
    );
  }
}
