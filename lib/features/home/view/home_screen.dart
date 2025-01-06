import 'package:flutter/material.dart';
import 'package:free_banking_mobile_app/features/home-info/view/homeinfo_screen.dart';
import 'package:free_banking_mobile_app/features/my-cards/view/mycards_screen.dart';
import 'package:free_banking_mobile_app/features/settings/view/settings_screen.dart';
import 'package:free_banking_mobile_app/features/statistics/view/statistics_screen.dart';
import 'package:free_banking_mobile_app/utils/color_constants.dart';
import 'package:free_banking_mobile_app/utils/image_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> screens = const [
    HomeinfoScreen(),
    MycardsScreen(),
    StatisticsScreen(),
    SettingsScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens[currentIndex],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 248, 244, 244),
          type: BottomNavigationBarType.fixed,
          
          currentIndex: 0,
          onTap: (value) => onTapAction(value),
          items: [
            BottomNavigationBarItem(icon: Image.asset(ImagesConstants.home,), label: "Home"),
            BottomNavigationBarItem(icon: Image.asset(ImagesConstants.mycards), label: "My Cards"),
            BottomNavigationBarItem(icon: Image.asset(ImagesConstants.statistics), label: "Statistics"),
            BottomNavigationBarItem(icon: Image.asset(ImagesConstants.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }

  onTapAction(int index) {
    setState(() {
      currentIndex = index ;
    });
  }
}