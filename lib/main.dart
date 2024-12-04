import 'package:flutter/material.dart';
import 'package:latihanukl/views/booking_view.dart';
import 'package:latihanukl/views/cinema_view.dart';
import 'package:latihanukl/views/dashboard_view.dart';
import 'package:latihanukl/views/login_view.dart';
import 'package:latihanukl/views/movie_view.dart';
import 'package:latihanukl/views/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginView(),
        '/dashboard': (context) => DashboardView(),
        '/booking': (context) => BookingView(),
        '/movie': (context) => MovieView(),
        '/cinema': (context) => CinemaView(),
      },
    );
  }
}
