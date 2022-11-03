import 'package:flutter/material.dart';




class HomeView extends StatefulWidget {
  const HomeView({ Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('David'),
              accountEmail: Text('David@gmail.com'),
            ),
            ListTile(
              leading: const Icon(Icons.person,
                color: Colors.black,),
              title: const Text('My profile'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings,
                color: Colors.black,),
              title: const Text('Settings'),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.login_rounded,
                color: Colors.black,),
              title: const Text('Log out'),
              onTap: () async {
              },
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      appBar:  AppBar(
        title: const Text(
          "Home",
        ),
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: TextFormField(
          initialValue: 'HOME VIEW',
          readOnly: true,
        ),
      ),
    );
  }
}

