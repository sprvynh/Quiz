import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
          accountName: Text("Hinv"),
          accountEmail: Text("vinhlequang757@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                "https://images.unsplash.com/photo-1598214886806-c87b84b7078b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80",
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(url))),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('profile'),
          onTap: () => null,
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('setting'),
          onTap: () => null,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text('Exit'),
          onTap: () => null,
        ),
      ]),
    );
  }
}
