import 'package:latihanukl/models/Film.dart';

class FilmController {
  List<Film> getFilms() {
    return [
      Film(
        title: 'Avengers Infinity War',
        imagePath: 'assets/AvengersIW.jpg',
      ),
      Film(
        title: 'Lego Movie',
        imagePath: 'assets/Lego Movie.jpg',
      ),
      Film(
        title: 'Madagascar',
        imagePath: 'assets/Madagascar.jpg',
      ),
      Film(
        title: 'PowerPuffGirls',
        imagePath: 'assets/PowerPuffGirls.jpg',
      ),
      Film(
        title: 'Toy Story 4',
        imagePath: 'assets/Toy Story 4.jpg',
      ),
      Film(
        title: 'Ultraman Tiga',
        imagePath: 'assets/Ultraman Tiga.jpg',
      ),
    ];
  }
}
