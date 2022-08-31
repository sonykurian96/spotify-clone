import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBar extends StatelessWidget {
  int _currentIndex;
  BottomBar(this._currentIndex);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(40, 40, 40, 1),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.transparent,
              
              // Color.fromRGBO(40, 40, 40, 1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (val) {
            if (val == 0) {
              Navigator.of(context).popAndPushNamed('/');
            } else if (val == 1) {
              Navigator.of(context).popAndPushNamed('/search');
            } else if (val == 2) {
              Navigator.of(context).popAndPushNamed('/library');
            } else if (val == 3) {
              Navigator.of(context).popAndPushNamed('/premium');
            }
          },
          currentIndex: _currentIndex,
          unselectedItemColor: Color.fromRGBO(179, 179, 179, 100),
          selectedItemColor: Colors.white,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.saved_search_outlined,
                size: 30,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.gripLinesVertical, size: 20),
              label: 'Your Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.spotify),
              label: 'Premium',
            ),
          ],
        ),
      ),
    );
  }
}
