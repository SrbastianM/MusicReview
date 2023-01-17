import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({super.key});

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {
  int indexTap = 0;

  final List<Widget> widgetsChilden = [
    HomeTrip(),
    const SearchTrips(),
    const ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChilden[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color.fromARGB(255, 68, 68, 68),
          primaryColor: Colors.grey,
        ),
        child: CurvedNavigationBar(
          onTap: onTapTapped,
          index: indexTap,
          backgroundColor: const Color.fromARGB(255, 95, 95, 95),
          items: const [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.person),
            Icon(Icons.notification_add),
            Icon(Icons.settings)
          ],
        ),
      ),
    );
  }
}
