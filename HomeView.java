import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../drawer_options_view/dark_theme/provider/theme_provider.dart';
import '../../utilities/nav_drawer.dart';
import 'home_views/MD/direct_messages_view.dart';
import 'home_views/notifications_view.dart';
import 'home_views/search_view.dart';



class HomeView extends StatefulWidget {
  const HomeView({ Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
        resizeToAvoidBottomInset: false,
      drawer: const NavDrawer(),
      appBar:  AppBar(
        elevation:
        Theme.of(context).platform == TargetPlatform.iOS
            ? 0.0
            : 4.0,
        title: const Text(
          "Home",
        ),

        actions: <Widget>[
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) =>   const SearchView())),
              icon: const Icon(Icons.search)),
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const NotificationsView()));
                },
                child: const Icon(
                    Icons.notifications_active
                ),
              )
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) =>  DirectMessagesView()));
                },
                child: const Icon(
                    Icons.send_sharp
                ),
              )
          ),
        ],
      ),
    );
  }
}

