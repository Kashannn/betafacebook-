import 'package:flutter/material.dart';

class Notificationn extends StatefulWidget {
  const Notificationn({super.key});

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text('Option 1'),
                ),
                PopupMenuItem(
                  child: Text('Option 2'),
                ),
                PopupMenuItem(
                  child: Text('Option 3'),
                ),
              ];
            },
          ),
        ],
      ),
      body: NotificationList(),
    );
  }
}

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NotificationDaySection(title: 'Today', itemCount: 4),
        NotificationDaySection(title: 'Yesterday', itemCount: 4),
        // Add more NotificationDaySection widgets for different days
      ],
    );
  }
}

class NotificationDaySection extends StatelessWidget {
  final String title;
  final int itemCount;

  NotificationDaySection({required this.title, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {
              return NotificationItem();
            },
          ),
        ),
      ],
    );
  }
}

class NotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/notification_image.png'),
      ),
      title: Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '10:00 AM',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Text(
                  'Notification description',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFF6154D5), // Replace 0xFF6154D5 with your desired color code
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      onTap: () {
        // Handle notification item tap
      },
    );
  }
}
