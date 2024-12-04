import 'package:latihanukl/models/cinema_place.dart';

class CinemaController {
  List<CinemaPlace> getCinemaPlaces() {
    return [
      CinemaPlace(
        title: "Malang Town Square",
        distance: "8.03 km away",
        type: "REGULAR*LUXE",
      ),
      CinemaPlace(
        title: "Lippo Plaza Batu",
        distance: "11.23 km away",
        type: "REGULAR",
      ),
    ];
  }
}
