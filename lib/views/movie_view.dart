import 'package:flutter/material.dart';
import 'package:latihanukl/controllers/film_controller.dart';
import 'package:latihanukl/models/Film.dart';
import 'package:latihanukl/widgets/buttom_nav.dart';
import 'package:latihanukl/widgets/film_container.dart'; // Import the container widget

class MovieView extends StatelessWidget {
  const MovieView({super.key});

  @override
  Widget build(BuildContext context) {
    final FilmController _controller = FilmController();
    List<Film> films = _controller.getFilms();

    return Scaffold(
      body: SingleChildScrollView(
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
                  labelText: "Movie/Cinema",
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/film');
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 70, right: 70),
                      decoration: BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.blue))),
                      child: Text(
                        "Movie",
                        style: TextStyle(fontSize: 20, color: Colors.blue),
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
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(144, 33, 149, 243)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.6,
              ),
              itemCount: films.length,
              itemBuilder: (context, index) {
                return FilmContainer(
                  picture: films[index].imagePath,
                  title: films[index].title,
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(page: 2),
    );
  }
}
