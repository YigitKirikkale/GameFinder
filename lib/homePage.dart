import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/tabs/homepage1.dart';
import 'package:flutter_application_1/pages/tabs/mainpage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: titlechanger(_pageindex), centerTitle: true),
      body: switcher(_pageindex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.gamepad_outlined), label: "Oyunlar")
        ],
        onTap: (index) {
          setState(() {
            _pageindex = index;
          });
        },
        currentIndex: _pageindex,
      ),
    );
  }

  switcher(int pageindex) {
    switch (pageindex) {
      case 0:
        return Mainpage();
        break;
      case 1:
        return Homepage1();
        break;
    }
  }

  titlechanger(int titleindex) {
    switch (titleindex) {
      case 0:
        return Text("Oyun Kataloğu");
        break;
      case 1:
        return Text("Oyunlar Sayfası");
        break;
    }
  }
}
