import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({required this.page});
  int page;
  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  getPage(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/booking');
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/movie');
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/cinema');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      unselectedItemColor: Colors.black,
      selectedItemColor: const Color.fromARGB(255, 0, 104, 190),
      currentIndex: widget.page,
      onTap: getPage,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: "Dashboard"),
        BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.tickets,
            ),
            label: "My Booking"),
        BottomNavigationBarItem(
            icon: Icon(Icons.slow_motion_video_outlined), label: "Movie"),
        BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined), label: "Cinema"),
      ],
    );
  }
}
