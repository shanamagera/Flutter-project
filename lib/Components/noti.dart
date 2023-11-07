import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:university_app/Screens/home_screen.dart';
import 'package:university_app/Components/nav_bar.dart';
class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
   _onTap(int index) {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute<Null>(builder: (BuildContext context) {
      return _children[_currentIndex];
    }));
  }

  int _currentIndex = 1;
  final List<Widget> _children = [
    HomeScreen(),
    const noti(),
  ];
  @override
  Widget build(BuildContext context) {

       
       return Scaffold(
        body: Center(
          child: Text('Hello'),
          
          
        ),



        

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
        // home
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromRGBO(0, 150, 136, 1)),
        // notifications
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
          backgroundColor: Color.fromRGBO(0, 150, 136, 1),
        ),
        // settings
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Color.fromRGBO(0, 150, 136, 1)),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        _onTap(_currentIndex);
      },
        ),
       );
  }
}