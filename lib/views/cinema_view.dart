// views/cinema_view.dart
import 'package:flutter/material.dart';
import 'package:latihanukl/controllers/cinema_controller.dart';
import 'package:latihanukl/widgets/buttom_nav.dart';
import 'package:latihanukl/models/cinema_place.dart';
import 'package:latihanukl/widgets/place_card.dart';

class CinemaView extends StatefulWidget {
  const CinemaView({super.key});
  @override
  State<CinemaView> createState() => _MyCinemaScreenState();
}

class _MyCinemaScreenState extends State<CinemaView> {
  final CinemaController _controller = CinemaController();

  @override
  Widget build(BuildContext context) {
    List<CinemaPlace> cinemaPlaces = _controller.getCinemaPlaces();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      Text("Malang"),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            Container(
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  labelText: "Cinema/Movie",
                ),
              ),
            ),
            SizedBox(height: 20),

            // Navigation Tabs
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/movie');
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 70, right: 70),
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.blue))),
                      child: Text(
                        "Movie",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(144, 33, 149, 243)),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/cinema');
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 70, right: 70),
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.blue))),
                      child: Text(
                        "Cinema",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Display Cinema Places
            Expanded(
              child: ListView.builder(
                itemCount: cinemaPlaces.length,
                itemBuilder: (context, index) {
                  return PlaceCard(
                    title: cinemaPlaces[index].title,
                    distance: cinemaPlaces[index].distance,
                    type: cinemaPlaces[index].type,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(page: 3),
    );
  }
}
