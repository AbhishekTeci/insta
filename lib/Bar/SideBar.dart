import 'package:flutter/material.dart';

class sideNavBar extends StatelessWidget {
  const sideNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("JCETRIX"),
            accountEmail: Text('Jcentrix@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                    image: AssetImage('profile.jpeg'),
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('accets/images.jpg'), fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Inbox'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Message'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text('Send'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Mail'),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
