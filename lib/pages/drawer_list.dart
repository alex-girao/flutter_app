import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SafeArea remove a area branca do topo do menu
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            //header do menu
            UserAccountsDrawerHeader(
              accountName: Text("Alex Girão"),
              accountEmail: Text("fco.alex.girao@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://avatars0.githubusercontent.com/u/3129090?s=400&v=4"),
              ),
            ),
            //itens da lista
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 1");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Ajuda"),
              subtitle: Text("mais informações..."),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 2");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("Item 3");
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
