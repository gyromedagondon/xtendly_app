import 'package:flutter/material.dart';

Drawer DrawerItem() {
  return Drawer(
    backgroundColor: Colors.white,
    child: Column(
      children: [
        DrawerHeader(
            child: Image(image: AssetImage('lib/assets/Ellipse 2.png'))),
        ListTile(leading: Icon(Icons.home), title: Text('HOME'))
      ],
    ),
  );
}

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          DrawerHeader(
              child: Image(image: AssetImage('lib/assets/Ellipse 2.png'))),
          ListTile(leading: Icon(Icons.home), title: Text('HOME')),
          ListTile(leading: Icon(Icons.home), title: Text('NEW ARRIVAL')),
          ListTile(leading: Icon(Icons.home), title: Text('SHOP')),
          ListTile(leading: Icon(Icons.home), title: Text('LAST COLLECTION')),
          ListTile(leading: Icon(Icons.home), title: Text('MEN')),
          ListTile(leading: Icon(Icons.home), title: Text('WOMEN')),
        ],
      ),
    );
  }
}
