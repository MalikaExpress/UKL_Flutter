import 'package:latihanukl/models/booking.dart';

class BookingController {
  List<Booking> getBookings() {
    return [
      Booking(
        title: 'GLADIATOR II',
        imagePath: 'assets/Gladiator 2.jpg',
        category: 'Action, Adventure',
        rating: 9.5,
        ageLimit: 'PG-18',
      ),
      Booking(
        title: 'RED ONE',
        imagePath: 'assets/Red One.jpg',
        category: 'Animation, Adventure',
        rating: 9.3,
        ageLimit: 'PG-17',
      ),
    ];
  }
}
