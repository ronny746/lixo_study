import 'package:flutter/material.dart';
import 'package:lixo_study/screens/navigation_bar_pages/account_page.dart';
import 'package:lixo_study/screens/navigation_bar_pages/announcement_page.dart';
import 'package:lixo_study/screens/navigation_bar_pages/enrolled_page.dart';
import 'package:lixo_study/screens/navigation_bar_pages/homepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final allPages = [
    const Homepage(),
    const ExplorePage(),
    const AnnouncementPage(),
    const AccountPage(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: allPages[selectedIndex],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: const Color(0xFFEEF3F8),
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.video_collection_outlined),
              label: "Enrolled",
              selectedIcon: Icon(Icons.video_collection),
            ),
            NavigationDestination(
              icon: Icon(Icons.announcement_outlined),
              label: "Announce",
              selectedIcon: Icon(Icons.announcement),
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: "Account",
              selectedIcon: Icon(Icons.account_circle),
            )
          ],
        ));
  }
}
