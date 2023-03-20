
import 'package:flutter/material.dart';
import 'package:ui/listt.dart';

import 'package:ui/ui.dart';

class Navigationb extends StatefulWidget {
  const Navigationb({Key? key}) : super(key: key);

  @override
  State<Navigationb> createState() => _NavigationbState();
}

class _NavigationbState extends State<Navigationb> {
  int _selectedItem = 0;
  void _botomBar(int index) {
    setState(() {
      _selectedItem = index;
    });            

  }

  List _pages = [
   uiDesign(),Text("ll"),
   ListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedItem],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedItem,
          onTap: _botomBar,


          items: const [
            BottomNavigationBarItem(
              

                icon: Icon(
                  
                  Icons.home,color: Colors.black,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,color: Colors.black,
                ),
                label: 'Text',),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.feedback,color: Colors.black,
                ),
                label: 'Feedback'),
          ]),
    );
  }
}
