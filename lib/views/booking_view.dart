// views/booking_view.dart
import 'package:flutter/material.dart';
import 'package:latihanukl/controllers/booking_controller.dart';
import 'package:latihanukl/widgets/buttom_nav.dart';
import 'package:latihanukl/widgets/movie_card.dart';
import 'package:latihanukl/models/booking.dart';

class BookingView extends StatefulWidget {
  const BookingView({super.key});

  @override
  State<BookingView> createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<BookingView> {
  final BookingController _controller = BookingController();

  @override
  Widget build(BuildContext context) {
    List<Booking> bookings = _controller.getBookings();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Booking",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.timer),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bookings.isEmpty ? "There's no active booking!" : "Your Bookings",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            if (bookings.isNotEmpty)
              for (var booking in bookings)
                MovieCard(
                  booking: booking,
                ),
            if (bookings.isEmpty)
              Center(
                child: Text(
                  "No bookings available.",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(page: 1),
    );
  }
}
