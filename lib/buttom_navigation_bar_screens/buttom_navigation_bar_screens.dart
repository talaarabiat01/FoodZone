
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_zoon/buttom_navigation_bar_screens/favorites_screen.dart';
import 'package:food_zoon/buttom_navigation_bar_screens/home_screen.dart';
import 'package:food_zoon/buttom_navigation_bar_screens/profile_screen.dart';
import 'package:food_zoon/buttom_navigation_bar_screens/track_screen.dart';

class ButtomNavigationScreen extends StatefulWidget {
  ButtomNavigationScreen({super.key});

  @override
  State<ButtomNavigationScreen> createState() => _ButtomNavigationScreenState();
}

class _ButtomNavigationScreenState extends State<ButtomNavigationScreen> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Builder(builder: (BuildContext context) {
        return _selectedIndex == 0
            ? HomeScreen()
            : _selectedIndex == 1
            ? const FavoritesScreen()
            : _selectedIndex == 2
            ? const TrackScreen()
            : const ProfileScreen();
      },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF9B1A19),
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              color: _selectedIndex == 0
                  ? const Color(0xFF9B1A19)
                  : const Color(0xff818181),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/heart.svg',
                    color: _selectedIndex == 1
                        ? const Color(0xFF9B1A19)
                        : const Color(0xff818181),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    'assets/images/location.svg',
                    color: _selectedIndex == 2
                        ? const Color(0xFF9B1A19)
                        : const Color(0xff818181),
                  ),
                ],
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/profile.svg',
                color: _selectedIndex == 3
                    ? const Color(0xFF9B1A19)
                    : const Color(0xff818181),
              ),
              label: ''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:
        const Color(0xFF9B1A19),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {},
        child: SvgPicture.asset(
          'assets/images/shopping-basket.svg',
          fit: BoxFit.scaleDown,
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}