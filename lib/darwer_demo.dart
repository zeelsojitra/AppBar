import 'package:flutter/material.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Demo"),
                accountEmail: Text("Zeel"),
                currentAccountPicture: CircleAvatar(),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Text("jk"),
              trailing: Text("jgfgh"),
              title: Text("poiuyt"),
            )
          ],
        ),
      ),
    );
  }
}
