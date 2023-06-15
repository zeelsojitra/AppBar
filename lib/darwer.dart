import 'package:flutter/material.dart';

class dawer extends StatefulWidget {
  @override
  State<dawer> createState() => _dawerState();
}

class _dawerState extends State<dawer> {
  final gloablekey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: gloablekey,
      appBar: AppBar(
        title: Text("Drawer"),
        actions: [
          IconButton(
            onPressed: () {
              gloablekey.currentState!.openDrawer(); 
            },
            icon: Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Zeel sojitra"),
                accountEmail: Text("Zeelsojitra00@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/zeel.jpeg"),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text("Profile"),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              onTap: () {},
              title: Text("Password"),
              leading: Icon(Icons.security),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              onTap: () {},
              title: Text("Contact us "),
              leading: Icon(Icons.contact_support_outlined),
            ),
            ListTile(
              onTap: () {},
              title: Text("Share"),
              leading: Icon(Icons.share),
            ),
            ListTile(
              onTap: () {},
              title: Text("Setting"),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              title: Text("Close"),
              leading: Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
